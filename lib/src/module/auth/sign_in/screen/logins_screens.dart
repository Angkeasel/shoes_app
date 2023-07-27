import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routers/router.dart';
import '../../../../widget/custom_text.dart';
import '../../../../widget/home/custom_buttons.dart';

import '../controller/contoller.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final logController = Get.put(ControllerSignin());
    // var phone = LocalStorage().getStringData(key: "ph");
    // var password = LocalStorage().getStringData(key: "passs");
    return Scaffold(
      appBar: AppBar(),
      //resizeToAvoidBottomInset: false,
      body: Obx(
        () => SafeArea(
          minimum: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Again!",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 32),
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
                      const SizedBox(height: 30),
                      CustomTextFiled(
                        title: 'Email',
                        hintText: 'Email',
                        height: 60,
                        controller: logController.emailTxtController,
                        isValidate: false,
                        textInputAction: TextInputAction.next,
                        onChanges: (email) {},
                      ),
                      const SizedBox(height: 30),
                      CustomTextFiled(
                        title: 'Password',
                        hintText: 'Password',
                        height: 60,
                        controller: logController.passwordTxtController,
                        maxlenght: 15,
                        isObscureText: !logController.isGreyEye.value,
                        suffixIcon: IconButton(
                          onPressed: () {
                            logController.isGreyEye.value =
                                !logController.isGreyEye.value;
                          },
                          icon: Icon(
                            logController.isGreyEye.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 18,
                          ),
                        ),

                        //initialValues: controllerPassword.text,

                        isValidate: false,
                      ),
                      const SizedBox(height: 12),
                      Row(
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
                      const SizedBox(height: 30),
                      logController.loginLoading.value
                          ? const CircularProgressIndicator.adaptive()
                          : CustomButtons(
                              title: 'Sign In',
                              onTap: () async {
                                await logController.onLogin();
                              },
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 30,
        ),
        child: GestureDetector(
          onTap: () {
            router.go('/register');
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
                  style: Theme.of(context).textTheme.titleMedium!.copyWith())
            ],
          ),
        ),
      ),
    );
  }
}
