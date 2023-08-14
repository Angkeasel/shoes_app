import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'choose_location_address.dart';

class AddNewDeliveryAddress extends StatefulWidget {
  const AddNewDeliveryAddress({super.key});

  @override
  State<AddNewDeliveryAddress> createState() => _AddNewDeliveryAddressState();
}

const myCurrnetLoacation = LatLng(11.588000535464978, 104.89708251231646);

class _AddNewDeliveryAddressState extends State<AddNewDeliveryAddress> {
  final myCardController = Get.put(MyCardController());
  @override
  void dispose() {
    super.dispose();
    myCardController.clearTextController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Delivery Address'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('User Information'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.firstNameController,
                            label: 'First Name',
                            hintText: 'First Name',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.lastNameController,
                            label: 'Last Name',
                            hintText: 'First Name',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.phoneController,
                            label: 'Phone',
                            hintText: 'Phone',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('User Address'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.streetNumberController,
                            label: 'Street No',
                            hintText: 'Street No',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.homeNumberController,
                            label: 'Home No',
                            hintText: 'Home No',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: CustomTextFiled(
                            controller: myCardController.fullAddressController,
                            label: 'Full Address',
                            hintText: 'Full Address',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Stack(
                              children: [
                                const GoogleMap(
                                  myLocationEnabled: true,
                                  myLocationButtonEnabled: false,
                                  zoomControlsEnabled: false,
                                  scrollGesturesEnabled:
                                      false, //widget.isScrolled!,

                                  mapType: MapType.normal,

                                  initialCameraPosition: CameraPosition(
                                    target: myCurrnetLoacation,
                                    zoom: 16,
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  bottom: 10,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const ChooseLocationAddress();
                                          },
                                        ),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: CustomButtons(
              title: 'Add',
              onTap: () {
                //TODO: Add Adress
              },
            ),
          ),
        ],
      ),
    );
  }
}
