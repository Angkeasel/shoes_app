import 'package:allpay/src/module/profile/controller/profile_controller.dart';
import 'package:allpay/src/module/profile/widget/custom_view_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ViewOrderPage extends StatelessWidget {
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Order'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              profileController.isLoadingOrderProduct.value
                  ? const Center(child: CircularProgressIndicator())
                  : profileController.viewOrderList.isEmpty
                      ? Column(
                          children:
                              profileController.viewOrderList.map((viewOrder) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: CustomViewOrderWidget(
                                year: DateFormat('yyyy').format(
                                  DateTime.parse('${viewOrder.createdAt}'),
                                ),
                                day: DateFormat('dd').format(
                                  DateTime.parse('${viewOrder.createdAt}'),
                                ),
                                month: DateFormat('MMM').format(
                                  DateTime.parse('${viewOrder.createdAt}'),
                                ),
                                orderId: '${viewOrder.id}',
                                status: '${viewOrder.status}',
                                totalAmount: '${viewOrder.totalAmount}',
                                email:
                                    '${viewOrder.deliveryaddress?.fullAddress}',
                                title: 'Nike men',
                              ),
                            );
                          }).toList(),
                        )
                      : const Center(child: Text('Empty Order')),
            ],
          ),
        ),
      ),
    );
  }
}
