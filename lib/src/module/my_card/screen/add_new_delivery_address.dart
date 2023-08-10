import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
import 'package:allpay/src/module/my_card/screen/choose_location_address.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddNewDeliveryAddress extends StatelessWidget {
  const AddNewDeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    const myCurrnetLoacation = LatLng(11.588000535464978, 104.89708251231646);
    final myCardController = Get.put(MyCardController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Delivery Address'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.white,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User Information'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'First Name',
                      hintText: 'First Name',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'Last Name',
                      hintText: 'First Name',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'Phone',
                      hintText: 'Phone',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('User Address'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'Street No',
                      hintText: 'Street No',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'Home No',
                      hintText: 'Home No',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: CustomTextFiled(
                      label: 'Full Address',
                      hintText: 'Full Address',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white),
                          child: GoogleMap(
                            myLocationEnabled: true,
                            myLocationButtonEnabled: false,
                            zoomControlsEnabled: false,
                            scrollGesturesEnabled: true, //widget.isScrolled!,

                            onTap: (v) {
                              debugPrint('========getLatLng: $v');
                              v;
                            },

                            mapType: MapType.normal,

                            initialCameraPosition: const CameraPosition(
                              target: myCurrnetLoacation,
                              zoom: 16,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10.0,
                          right: 10.0,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const ChooseLocationAddress();
                                },
                              ));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
