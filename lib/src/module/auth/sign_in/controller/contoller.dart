
import 'package:allpay/src/config/routers/go_route.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:allpay/src/util/alert_snackbar.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerSignin extends GetxController {
  ApiBaseHelper api = ApiBaseHelper();
  var isLoading = false.obs;
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
  final passWord="".obs;
  final isGreyEye = false.obs;
  final userName = ''.obs;
  final email =''.obs;
  TextEditingController conEmail = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  TextEditingController conName = TextEditingController();
  
  Future<void> onLogin({
    String?email,
    String ? password,
  })async{
    isLoading(true);
    await api.onNetworkRequesting(url: 'signin', methode: METHODE.post, isAuthorize: false, body: {
      'email':email,
      'password':password
    }).then((value)async {
      debugPrint('=======> check sing-in$value');
      await LocalStorage.storeData(key: 'access_token', value: value['accessToken']);
      router.go('/home-router');
      isLoading(false);
    }).onError((ErrorModel error, stackTrace) {
      
      debugPrint('======>error statuscode${error.statusCode}');
      debugPrint('=======> error in Login ${error.bodyString}');
      alertErrorSnackbar(title: "Error", message: error.bodyString["message"].toString());
      isLoading(false);
    });
  }
  /// register App

   final regUserName =''.obs;
   final regEmail =''.obs;
   final regPass =''.obs;
   final isResPass = false.obs;
   TextEditingController regNameCon = TextEditingController();
   TextEditingController regEmailCon = TextEditingController();
   TextEditingController regPassCon = TextEditingController();
   
   Future<void>onRegister({
    String ? userName,
    String? email,
    String? passWord
   })async{
    await api.onNetworkRequesting(url: "signup", methode: METHODE.post, isAuthorize: false,body: {
      "first_name":userName,
      "last_name":userName,
      "email":email,
      "password":passWord,
    }).then((respone) {
     debugPrint('========> signup proccess $respone');
      router.go('/login');
    }).onError((ErrorModel error, stackTrace) {
       debugPrint('======>error statuscode${error.statusCode}');
      debugPrint('=======> error in Login ${error.bodyString}');
      alertErrorSnackbar(title: "Error", message: error.bodyString["message"].toString());
    });
   }


}
