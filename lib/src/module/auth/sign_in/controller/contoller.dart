import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerSignin extends GetxController {
  var isInputEmail = "".obs;
  var isPassword = "".obs;
  var isvalidate = false.obs;
  //login
  var isInputEmailLog = "".obs;
  var isPasswordLog = "".obs;
  var isvalidateLog = false.obs;
  var islength = 4.obs;
  var ischeckColor = false.obs;
  //// login App
  ///
  final isPassWord="".obs;
  final isGreyEye = false.obs;
  final userName = ''.obs;
  final phone =''.obs;
  
  TextEditingController conPhone = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  TextEditingController conName = TextEditingController();

  /// register App
   final regUserName =''.obs;
   final regPhone =''.obs;
   final regPass =''.obs;
   final isResPass = false.obs;
   TextEditingController regNameCon = TextEditingController();
   TextEditingController regPhoneCon = TextEditingController();
   TextEditingController regPassCon = TextEditingController();
}
