import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:allpay/src/module/my_card/screen/add_new_delivery_address.dart';
import 'package:allpay/src/module/my_card/widgets/custom_address_items.dart';
import 'package:allpay/src/widget/no_product_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectDeliveryAddressPage extends StatefulWidget {
  const SelectDeliveryAddressPage({super.key});

  @override
  State<SelectDeliveryAddressPage> createState() =>
      _SelectDeliveryAddressPageState();
}

class _SelectDeliveryAddressPageState extends State<SelectDeliveryAddressPage> {
  @override
  void initState() {
    myCardController.fetchDeliveryAddress();
    super.initState();
  }

  final myCardController = Get.put(MyCardController());
  @override
  Widget build(BuildContext context) {
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
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myCardController.deliveryAddressList.isNotEmpty
                          ? Column(
                              children: myCardController.deliveryAddressList
                                  .asMap()
                                  .entries
                                  .map(
                                (e) {
                                  return CustomDeliveryAddressCard(
                                    phoneNumber: e.value.phone,
                                    firstName: e.value.firstName,
                                    lastName: e.value.lastName,
                                    fullAddress: e.value.fullAddress,
                                    label: e.value.label,
                                    isSelected: e.key ==
                                        myCardController.currentIndex.value,
                                    ontap: () {
                                      myCardController.selectedAdress.value =
                                          e.value;

                                      myCardController.currentIndex.value =
                                          e.key;
                                      debugPrint(
                                          '${myCardController.currentIndex.value}');
                                    },
                                    isDefualt: e.value.isDefault,
                                  );
                                },
                              ).toList(),
                            )
                          : const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: NoProduct(text: 'No Address added'),
                              ),
                            ),
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
                            child: Row(
                              children: [
                                const Icon(Icons.add),
                                const SizedBox(width: 8.0),
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
                          ),
                        ),
                      ),
                      // const SizedBox(height: 20,),
                      // CustomButtons(title: 'Add Address', onTap: (){

                      // }),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
