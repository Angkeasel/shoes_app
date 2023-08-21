import 'package:allpay/src/module/my_card/controller/map_controller.dart';
import 'package:allpay/src/module/my_card/model/address/address_models.dart';
import 'package:allpay/src/module/my_card/model/mycard/my_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/api_base_herper.dart';

class MyCardController extends GetxController {
  /// for used present

  final ApiBaseHelper _api = ApiBaseHelper();
  final mapController = Get.put(AddressController());
  var myCardList = <MyCardModel>[].obs;

  final ValueNotifier counter = ValueNotifier(1);

  num get getTotalCost => myCardList.isNotEmpty
      ? myCardList.fold(
          0, (previousValue, element) => previousValue + (element.price ?? 0))
      : 0;

  final loadingCart = false.obs;
  Future<List<MyCardModel>> getMyCard({bool loading = true}) async {
    try {
      if (loading) {
        loadingCart(true);
      }

      loadingCart(true);
      await _api
          .onNetworkRequesting(
              url: "cart", methode: METHODE.get, isAuthorize: true)
          .then((value) {
        myCardList.clear();
        value.map((e) {
          myCardList.add(MyCardModel.fromJson(e));
        }).toList();
      }).onError((ErrorModel error, _) {
        debugPrint(' =======>Error Body :${error.bodyString}');
      });
    } catch (e) {
      debugPrint(' =======>Error Body :${e.toString()}');
    } finally {
      loadingCart(false);
    }
    return myCardList;
  }

  final isDefault = false.obs;
  final deliveryAddressList = <AddressModels>[].obs;
  final deliveryAddressModel = AddressModels().obs;
  final isFetchingDeliveryAddress = false.obs;

  Future fetchDeliveryAddress() async {
    isFetchingDeliveryAddress(true);
    try {
      await _api
          .onNetworkRequesting(
        url: 'delivery-address',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        deliveryAddressList.clear();
        debugPrint('Response: $response');
        response.map((e) {
          deliveryAddressModel.value = AddressModels.fromJson(e);
          deliveryAddressList.add(deliveryAddressModel.value);
        }).toList();
        isFetchingDeliveryAddress(false);
      }).onError((ErrorModel error, _) {
        debugPrint('Data: $deliveryAddressList');
        isFetchingDeliveryAddress(false);
      });
    } catch (e) {
      debugPrint('Error Fetch Delivery-address : ${e.toString()}');
      isFetchingDeliveryAddress(false);
    }
    return deliveryAddressList;
  }

  // Place Order
  Future<void> placeOrder() async {
    final body = {
      "total_amount": 32.2,
      "deliveryaddress_id": 1,
      "prices": myCardList.map((element) => element.price).toList(),
      "quantities": myCardList.map((element) => element.quantity).toList(),
      "variant_ids": myCardList.map((element) => element.variant?.id).toList(),
      // "size_ids": myCardList.map((element) => element.variant.sizes).toList(),
      "product_ids": myCardList.map((element) => element.product?.id).toList()
    };
    await _api
        .onNetworkRequesting(
      url: 'order',
      methode: METHODE.post,
      body: body,
      isAuthorize: true,
    )
        .then(
      (resBody) async {
        debugPrint(' $resBody');
        await Get.put(MyCardController()).getMyCard(loading: false);
      },
    ).onError(
      (ErrorModel error, _) {
        debugPrint('${error.bodyString}');
      },
    );
  }

  Future<void> postAddress() async {
    await _api.onNetworkRequesting(
        url: 'delivery-address',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "first_name": firstNameController.text,
          "last_name": lastNameController.text,
          "phone": phoneController.text,
          "street_no": streetNumberController.text,
          "home_no": homeNumberController.text,
          "full_address": fullAddressController.text,
          "latitute": mapController.latitude.toDouble(),
          "longtitute": mapController.longitude.toDouble(),
        }).then((response) async {
      debugPrint('Post adrees Success : $response');
      clearTextController();
    }).onError((ErrorModel error, stackTrace) {
      debugPrint(
          'Post Adress not work : ${error.bodyString}, ${error.statusCode}');
    });
  }

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final streetNumberController = TextEditingController();
  final homeNumberController = TextEditingController();
  final fullAddressController = TextEditingController();

  void clearTextController() {
    firstNameController.text = '';
    lastNameController.text = '';
    phoneController.text = '';
    streetNumberController.text = '';
    homeNumberController.text = '';
    fullAddressController.text = '';
  }

  @override
  void onInit() {
    fetchDeliveryAddress();
    super.onInit();
  }
}
