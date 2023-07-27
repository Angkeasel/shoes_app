import 'package:allpay/src/module/profile/model/view_order_model/view_order_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewOrderController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  final viewOrderList = <ViewOrderModel>[].obs;
  final isLoadingOrderProduct = false.obs;

  Future<List<ViewOrderModel>> fetchOrderProducts() async {
    try {
      isLoadingOrderProduct(true);
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'order',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        viewOrderList.clear();
        response.map((e) {
          viewOrderList.add(ViewOrderModel.fromJson(e));
        }).toList();
      });
      debugPrint('fetchOrder: $viewOrderList');
      isLoadingOrderProduct(false);
    } catch (e) {
      debugPrint('Error fetch order product: $e');
      isLoadingOrderProduct(false);
    }
    return viewOrderList;
  }
}
