import 'package:allpay/src/module/my_card/model/address/address_models.dart';
import 'package:allpay/src/module/my_card/model/mycard/my_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/api_base_herper.dart';

class MyCardController extends GetxController {
  /// for used present

  final ApiBaseHelper _api = ApiBaseHelper();
  var myCardList = <MyCardModel>[].obs;

  final ValueNotifier<int> counter = ValueNotifier<int>(1);
  final loadingCart = false.obs;
  Future<List<MyCardModel>> getMyCard() async {
    try {
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
          isFetchingDeliveryAddress(false);
        }).toList();
      }).onError((ErrorModel error, stackTrace) {
        debugPrint('Data: $deliveryAddressList');
        isFetchingDeliveryAddress(false);
      });
    } catch (e) {
      debugPrint('Error Fetch Delivery-address : ${e.toString()}');
      isFetchingDeliveryAddress(false);
    }
    return deliveryAddressList;
  }

  @override
  void onInit() {
    fetchDeliveryAddress();
    super.onInit();
  }
}
