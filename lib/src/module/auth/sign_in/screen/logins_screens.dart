import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routers/go_route.dart';
import '../../../../util/alert_snackbar.dart';
import '../../../../widget/custom_text.dart';
import '../../../../widget/home/custom_buttons.dart';
import '../../local_storage/local_storage.dart';
import '../controller/contoller.dart';

class LoginScreens extends StatelessWidget {
  LoginScreens({super.key});
  final logController = Get.put(ControllerSignin());
  var phone = LocalStorage().getStringData(key: "ph");
  var password = LocalStorage().getStringData(key: "passs");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      //resizeToAvoidBottomInset: false,
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Again!",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Please fill your phone number and password to login",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff707B81)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextFiled(
                      title: 'Phone',
                      height: 60,
                      keyboardType: TextInputType.number,
                      controller: logController.conPhone,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      // isSelected:true,
                      hintText: 'Phone',
                      isObscureText: false,
                      labelText: 'Phone',
                      isValidate: false,
                      onChanges: (phone) {
                        debugPrint('=======>123$phone');
                        logController.phone.value = phone;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFiled(
                      title: 'Password',
                      height: 60,
                      controller: logController.conPassword,
                      hintText: 'Password',
                      maxlenght: 8,
                      isObscureText: !logController.isGreyEye.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            logController.isGreyEye.value =
                                !logController.isGreyEye.value;
                          },
                          icon: Icon(logController.isGreyEye.value
                              ? Icons.visibility
                              : Icons.visibility_off)),
                
                      //initialValues: controllerPassword.text,
                      labelText: 'Password',
                      isValidate: false,
                      onChanges: (ps) {
                        logController.isPassWord.value = ps;
                        debugPrint('=====>ps${logController.isPassWord.value}');
                      },
                    ),
                    SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint('=======>Forget password');
                              context.push("/fogetpass");
                            },
                            child: Text(
                              "Forget password",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: const Color(0xff707B81)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CustomButtons(
                      title: 'Sign In',
                      onTap: () {
                        if (phone == logController.phone.value &&
                            password == logController.isPassWord.value) {
                          Future.delayed(const Duration(milliseconds: 500), () {
                            alertSuccessSnackbar(
                                message: 'Login Successful', title: 'Success');
                          });
                
                          context.go('/home-router');
                
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return const HomePage();
                          // }));
                        } else {
                          alertErrorSnackbar(
                            title: "Error",
                            message: "Account not found",
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    router.push('/register');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New User? ",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: const Color(0xff6A6A6A)),
                      ),
                      Text("Create Account ",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith())
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
