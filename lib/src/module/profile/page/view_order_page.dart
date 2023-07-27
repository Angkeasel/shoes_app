import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_view_order.dart';
import 'package:allpay/src/util/format_datetime.dart';
import 'package:allpay/src/widget/no_product_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewOrderCon = Get.put(ViewOrderController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Order'),
      ),
      body: Obx(
        () {
          return viewOrderCon.isLoadingOrderProduct.value
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.red,
                ))
              : viewOrderCon.viewOrderList.isNotEmpty
                  ? SingleChildScrollView(
                      child: Column(
                      children: viewOrderCon.viewOrderList.map((viewOrder) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: CustomViewOrderWidget(
                            onTap: () {
                              context.push(
                                  '/view-order/view-order-detail/${viewOrder.id}');
                              debugPrint(
                                  'hello: ${viewOrderCon.viewOrderModel.value.orderitems}');
                            },
                            orderId: '${viewOrder.id}',
                            status: '${viewOrder.status}',
                            totalAmount: '${viewOrder.totalAmount}',
                            time: TextFormat()
                                .formatTime('${viewOrder.createdAt}'),
                            date: TextFormat()
                                .getFormattedDate('${viewOrder.createdAt}'),
                          ),
                        );
                      }).toList(),
                    ))
                  : const Center(
                      child: NoProduct(text: 'Empty Order'),
                    );
        },
      ),
    );
  }
}
