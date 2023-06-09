
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';


import '../../../../widget/custom_text.dart';
import '../../../../widget/home/custom_buttons.dart';
import '../controller/contoller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final logController = Get.put(ControllerSignin());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Column(
              children: [
                CustomButtons(
                  title: 'Sign Up',
                  onTap: () {
                    logController.onRegister(
                      userName: logController.regUserName.value,
                      email: logController.regEmail.value,
                      passWord: logController.regPass.value
                    );
                    // showDialogConfirmation(
                    //   context: context,
                    //   accept: 'Accept',
                    //   cancel: 'Cancel',
                    //   txt: 'We have send password recovery code in your email',
                    // );
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return const ForgetPassword();
                    // }));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: ()  {
                    // await LocalStorage()
                    //     .storeData(key: "ph", value: "096453456");
                    // await LocalStorage()
                    //     .storeData(key: "passs", value: "admin123");

                    // var phone = LocalStorage().getStringData(key: "ph");
                    // var password = LocalStorage().getStringData(key: "passs");
                    // debugPrint('Time to Log In ========>');
                    // debugPrint('phone: $phone Password: $password');

                    context.push("/login");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account?",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff6A6A6A)),
                      ),
                      Text("Log In",
                          style: Theme.of(context).textTheme.titleMedium!)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Register Account",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 32),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Please fill your details to create an account",
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
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      CustomTextFiled(
                        title: 'Your Name',
                        controller: logController.regNameCon,
                        hintText: 'usename',
                        initialValues: logController.regNameCon.text,
                        labelText: 'usename',
                        isValidate: false,
                        onChanges: (v) {
                          logController.regUserName.value = v;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        title: 'Email',
                        controller: logController.regEmailCon,
                        initialValues: logController.regEmailCon.text,
                        hintText: 'Email',
                        labelText: 'Email',
                        isValidate: false,
                        onChanges: (v) {
                          logController.regEmail.value = v;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        title: 'Password',
                        controller: logController.regPassCon,
                        hintText: 'Password',
                        maxlenght: 15,
                        isObscureText: !logController.isResPass.value,
                        initialValues: logController.regPassCon.text,
                        suffixIcon: IconButton(
                            onPressed: () {
                              logController.isResPass.value =
                                  !logController.isResPass.value;
                            },
                            icon: Icon(logController.isResPass.value
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        labelText: 'Password',
                        isValidate: false,
                        onChanges: (ps) {
                          logController.regPass.value = ps;
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
