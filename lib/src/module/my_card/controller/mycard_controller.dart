import 'package:allpay/src/module/my_card/controller/map_controller.dart';
import 'package:allpay/src/module/my_card/model/address/address_models.dart';
import 'package:allpay/src/module/my_card/model/mycard/my_card_model.dart';
import 'package:allpay/src/module/my_card/screen/order_sucess.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/util/loading/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../util/api_base_herper.dart';

class MyCardController extends GetxController {
  /// for used present
  var isSelect = false.obs;
  var currentIndex = 0.obs;
  final ApiBaseHelper _api = ApiBaseHelper();
  final mapController = Get.put(AddressController());
  var myCardList = <MyCardModel>[].obs;

  final ValueNotifier counter = ValueNotifier(1);

  num get getTotalCost => myCardList.isNotEmpty
      ? myCardList.fold(
          0,
          (previousValue, element) =>
              previousValue +
              ((element.variant?.price ?? 0) * element.quantity!))
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
  final Rx<AddressModels?> selectedAdress = Rx(null);
  final isFetchingDeliveryAddress = false.obs;

  void selectAdress() {
    if (deliveryAddressList.isNotEmpty) {
      selectedAdress.value =
          deliveryAddressList.where((e) => e.isDefault == true).first;
      debugPrint('Delivery Address $selectedAdress');
    }
  }

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

  Future<void> placeOrder({
    required BuildContext context,
    required String deliveryAddressId,
    required double total,
  }) async {
    showLoading(context);
    final body = {
      "deliveryaddress_id": deliveryAddressId,
      "total": total,
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
        removeLoading();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OrderDetail();
            },
          ),
        );
        Get.put(MyCardController()).getMyCard(loading: false);
      },
    ).onError(
      (ErrorModel error, _) {
        removeLoading();
        alertErrorSnackbar(title: 'Error', message: "Order Fail");
        debugPrint('${error.bodyString}');
      },
    );
  }

  Future<void> postAddress(
    BuildContext context,
  ) async {
    final body = {
      "first_name": firstNameController.text,
      "last_name": lastNameController.text,
      "phone": phoneController.text,
      "street_no": streetNumberController.text,
      "home_no": homeNumberController.text,
      "full_address": fullAddressController.text,
      "latitute": mapController.latitude.toDouble(),
      "longtitute": mapController.longitude.toDouble(),
    };
    await _api
        .onNetworkRequesting(
      url: 'delivery-address',
      methode: METHODE.post,
      isAuthorize: true,
      body: body,
    )
        .then((response) async {
      context.pop();
      debugPrint('Post adrees Success : $response');
      clearTextController();
      fetchDeliveryAddress();
    }).onError((ErrorModel error, stackTrace) {
      debugPrint(
          'Post Adress not work : ${error.bodyString}, ${error.statusCode}');
      alertErrorSnackbar(
        message: error.bodyString['message'],
        title: 'Add Fail',
      );
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
