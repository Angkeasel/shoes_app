import 'package:allpay/src/module/profile/model/order_invoice_model/order_invoice_model.dart';
import 'package:allpay/src/module/profile/model/view_order_model/view_order_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:allpay/src/util/loading/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

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
      isLoadingOrderProduct(false);
    } catch (e) {
      debugPrint('Error fetch order product: $e');
      isLoadingOrderProduct(false);
    }
    return viewOrderList;
  }

  final orderInvoiceModel = OrderInvoiceModel().obs;
  final isLoadingOrderInvoice = false.obs;

  Future fetchInvoiceOrder({int? id}) async {
    try {
      isLoadingOrderInvoice(true);
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'invoice/$id',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        orderInvoiceModel.value = OrderInvoiceModel.fromJson(response);
        debugPrint('Hello: ${orderInvoiceModel.value}');
      });
      isLoadingOrderInvoice(false);
    } catch (e) {
      debugPrint('Error fetch order product: $e');
      isLoadingOrderInvoice(false);
    }
    return orderInvoiceModel.value;
  }

  Future canCelOrder(int id, BuildContext context) async {
    try {
      showLoading(context);
      await _apiBaseHelper.onNetworkRequesting(
        url: 'cancel-order/$id',
        methode: METHODE.update,
        isAuthorize: true,
        body: {},
      ).then((response) {
        fetchOrderProducts();
        removeLoading();
        context.pop();
      }).onError((ErrorModel error, stackTrace) {
        removeLoading();
        debugPrint('Error fetch order product: ${error.bodyString}');
      });
      isLoadingOrderInvoice(false);
    } catch (e) {
      removeLoading();
    }
  }
}
