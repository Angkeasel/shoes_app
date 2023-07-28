import 'dart:async';
import 'dart:io';

import 'package:allpay/src/module/profile/model/user_gender_model/user_gender_model.dart';
import 'package:allpay/src/module/profile/model/user_profile_model/user_profile_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:allpay/src/util/helper/upload_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ProfileController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  final FileUpload fileUpload = FileUpload();
  final indexGen = 0.obs;
  final titleGen = ''.obs;
  List<String> genderList = [
    'Male',
    'Female',
  ];

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> fecthUserProfile <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  final formattedDate = ''.obs;
  final dateOfBirth = DateTime(2023, 2, 1).obs;
  final userProfileModel = UserProfileModel().obs;

  final isLoadingProfile = false.obs;
  Future fecthUserProfile() async {
    isLoadingProfile(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'profile',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        debugPrint('response: $response');
        userProfileModel.value = UserProfileModel.fromJson(response);

        // format Date
        final dateTime = userProfileModel.value.dateOfBirth;
        final date = DateTime.parse(dateTime!);
        formattedDate.value = DateFormat('MM/dd/yyyy').format(date);
      });
    } catch (e) {
      debugPrint('------- fecthUserProfile Error: $e');
      isLoadingProfile(false);
    }
    isLoadingProfile(false);
    return userProfileModel.value;
  }

  @override
  void onInit() async {
    await fecthUserProfile();
    await fecthUserGender();
    super.onInit();
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> fecthUserGender <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  final userGendermodel = UserGenderModel().obs;
  final isLoadingGender = false.obs;
  Future fecthUserGender() async {
    isLoadingGender(true);
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'gender',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        var responseJson = response[0];
        userGendermodel.value = UserGenderModel.fromJson(responseJson);
        debugPrint('e: ${userGendermodel.value}');
      });
    } catch (e) {
      isLoadingGender(false);
      debugPrint('------- fecthUserGender Error: ${e.toString()}');
    }
    isLoadingGender(false);
    return userGendermodel.value;
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> onSubmitUserGender <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  Future<void> onSubmitUserGender({int? id}) async {
    debugPrint('UserId: $id');
    try {
      await _apiBaseHelper.onNetworkRequesting(
          url: 'gender/$id',
          methode: METHODE.update,
          isAuthorize: true,
          body: {
            "value": titleGen.value,
          }).then((response) {
        // var message = response;
        // debugPrint('onSubmit: $message');
      });
    } catch (e) {
      debugPrint('------- onSubmitUserGender Error: ${e.toString()}');
    }
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> onSubmitUserDOB <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  final isLoadingOnSubmittedDOB = false.obs;
  Future<void> onSubmitUserDOB() async {
    isLoadingOnSubmittedDOB(true);
    try {
      await _apiBaseHelper.onNetworkRequesting(
          url: 'profile',
          methode: METHODE.update,
          isAuthorize: true,
          body: {
            "date_of_birth": "${dateOfBirth.value}",
          }).then((response) {
        debugPrint('zzzz$response');
        // var message = response;
        // debugPrint('onSubmit: $message');
      });
      isLoadingOnSubmittedDOB(false);
    } catch (e) {
      debugPrint('------- onSubmitUserDOB Error: ${e.toString()}');
    }
    isLoadingOnSubmittedDOB(false);
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> pickedImage <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  File? image;
  final imagePath = ''.obs;
  XFile? imageFile;
  final _picker = ImagePicker().obs;
  final isLoadingPickedImage = false.obs;

  Future pickedImage(ImageSource? imageSource) async {
    try {
      imagePath.value.isEmpty == true;
      image == null;
      isLoadingPickedImage(true);
      final pickedFile = await _picker.value.pickImage(
        source: imageSource!,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        imageQuality: 100,
      );

      if (pickedFile != null) {
        image = File(pickedFile.path);
        imagePath.value = pickedFile.path;

        debugPrint('Picked: $imagePath');
        isLoadingPickedImage(false);
      } else {
        debugPrint('No image selected.');
        isLoadingPickedImage(false);
      }
    } catch (e) {
      debugPrint('Image Picker error = = = = = $e');
      isLoadingPickedImage(false);
    }
    return imagePath.value;
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> onSubmitProfilePicutre <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  Future<void> onSubmitProfilePicutre() async {
    try {
      final response = await fileUpload
          .uploadImage(
        file: File(imagePath.value),
        keyName: 'imageprofile',
        url: 'https://ecommerceapp-m28x.onrender.com/api/v1/profile',
      )
          .then((value) {
        debugPrint('value: $value');
        debugPrint('status: ${value.statusCode}');
        if (value.statusCode == 200) {
          if (imagePath.value.isNotEmpty) {
            Get.snackbar(
              'Success',
              'Add photo successfully',
              snackPosition: SnackPosition.BOTTOM,
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.green,
            );
          }
        } else {
          debugPrint('value: have');
          Get.snackbar('Error', 'Please select photo',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5));
        }
      });
      debugPrint('submit profile photo: $response');
    } catch (e) {
      Get.snackbar(
        'Error',
        'Please select photo',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    }
  }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> fetchOrderProducts <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
}
