import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_view_order.dart';
import 'package:allpay/src/util/format_datetime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ViewOrderPage extends StatefulWidget {
  const ViewOrderPage({super.key});

  @override
  State<ViewOrderPage> createState() => _ViewOrderPageState();
}

class _ViewOrderPageState extends State<ViewOrderPage> {
  final viewOrderCon = Get.put(ViewOrderController());
  @override
  void initState() {
    viewOrderCon.fetchOrderProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                                debugPrint('HELLO ${viewOrder.id}');
                              },
                              orderId: '${viewOrder.id}',
                              status: viewOrder.status,
                              totalAmount: '${viewOrder.totalAmount}',
                              time: TextFormat.formatTime(
                                  '${viewOrder.createdAt}'),
                              date: TextFormat.getFormattedDate(
                                  '${viewOrder.createdAt}'),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/png/order_sum.png',
                            width: 50,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "No Orders Yet",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "You don't have any order yet, Make an order?",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: AppColor.textLightColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.go('/');
                            },
                            child: const Text('Explore New Shoes'),
                          )
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
