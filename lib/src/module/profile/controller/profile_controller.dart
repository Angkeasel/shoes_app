import 'package:allpay/src/module/profile/model/user_profile_model/user_profile_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  final indexGen = 0.obs;
  final titleGen = ''.obs;
  List<String> genderList = [
    'Male',
    'Female',
  ];

  final dateTime = DateTime(2023, 2, 1).obs;
  final userProfileModel = UserProfileModel().obs;
  Future fecthUserProfile() async {
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: 'profile',
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        userProfileModel.value = UserProfileModel.fromJson(response);
        debugPrint('reponse model: ${userProfileModel.value}');
      });
    } catch (e) {
      debugPrint('------- Function Error: $e');
    }
    return userProfileModel.value;
  }

  @override
  void onInit() async {
    await fecthUserProfile();
    super.onInit();
  }
}
