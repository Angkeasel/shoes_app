import 'package:allpay/src/module/my_card/model/address/address_model.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  // final addressController = TextEditingController().obs;
  // final locationDetailController = TextEditingController().obs;
  // final descriptionController = TextEditingController().obs;
  // var addressModel = AddressModel().obs;
  // var isLoading = false.obs;
//Testing
  // String googleApikey = "API_KEY";
  var latitude = 11.5815697.obs;
  var longitude = 104.9017115.obs;
  var address = "".obs;
  var emptyList = <AddressModel>[].obs;
  // var isChecked = false.obs;

  var latitudePosition = 0.0.obs;
  var longitudePosition = 0.0.obs;
  var isCheckMaker = false.obs;
  final stAddress = ''.obs;

  clear() {
    // address.value = '';
    // locationDetailController.close();
  }

  Future<String?> getAddressFromLatLng(double lat, double lng) async {
    String address = '';
    try {
      await placemarkFromCoordinates(lat, lng)
          .then((List<Placemark> placemarks) {
        Placemark place = placemarks[0];

        address =
            '${place.street}, ${place.subLocality},${place.administrativeArea}, ${place.country}'
                .toString();
      });
    } catch (e) {
      debugPrint("Full Address:$e");
    } finally {
      debugPrint("Full ");
    }
    return address;
  }

  addNewAddress(
      {required bool isIcons,
      required String address,
      required String location,
      String? desc}) {
    emptyList.add(
      AddressModel(
        isIcons: isIcons,
        addressName: address,
        locationDetail: location,
        desc: desc,
      ),
    );
  }
}
