import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:allpay/src/module/my_card/screen/add_new_delivery_address.dart';
import 'package:allpay/src/module/my_card/widgets/custom_address_items.dart';
import 'package:allpay/src/widget/no_product_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectDeliveryAddressPage extends StatelessWidget {
  const SelectDeliveryAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myCardController = Get.put(MyCardController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Delivery Address'),
      ),
      body: Obx(
        () => myCardController.isFetchingDeliveryAddress.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const AddNewDeliveryAddress();
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Colors.grey.shade300,
                        //       offset: const Offset(0.3, 0.3),
                        //     )
                        //   ],
                        // ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.add),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'Add New Delivery Address',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0, left: 20.0, right: 20.0),
                    child: Text(
                      'My Address',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  myCardController.deliveryAddressList.isNotEmpty
                      ? Column(
                          children:
                              myCardController.deliveryAddressList.map((e) {
                            return CustomDeliveryAddressCard(
                              phoneNumber: e.phone,
                              firstName: e.firstName,
                              lastName: e.lastName,
                              fullAddress: e.fullAddress,
                              label: e.label,
                              onChanged: (p0) {},
                              value: myCardController.isDefault.value,
                              isDefualt: e.isDefault,
                            );
                          }).toList(),
                        )
                      : const Center(
                          child: NoProduct(text: 'Empty Order'),
                        ),
                ],
              ),
      ),
    );
  }
}
