import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/my_card/widgets/order_cart.dart';
import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  final _orderController = Get.put(ViewOrderController());
  @override
  void initState() {
    _orderController.fetchOrderProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
      ),
      body: Obx(
        () => _orderController.isLoadingOrderProduct.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _orderController.viewOrderList.isEmpty
                ? Center(
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
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: AppColor.textLightColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "You don't have any order yet, Make an order?",
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
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
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: _orderController.viewOrderList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      final order = _orderController.viewOrderList[index];
                      return OrderCard(model: order);
                    },
                  ),
      ),
    );
  }
}
