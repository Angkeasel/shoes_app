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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Register Account",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please fill your details to create an account",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff707B81)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Obx(
                      () => Column(
                        children: [
                          CustomTextFiled(
                            title: 'FirstName',
                            controller:
                                logController.registerFirstNameTxtController,
                            hintText: 'FirstName',
                            isValidate: false,
                          ),
                          const SizedBox(height: 15),
                          CustomTextFiled(
                            title: 'LastName',
                            controller:
                                logController.registerLastNameTxtController,
                            hintText: 'LastName',
                            isValidate: false,
                          ),
                          const SizedBox(height: 15),
                          CustomTextFiled(
                            title: 'Email',
                            controller:
                                logController.registerEmailTxtController,
                            hintText: 'Email',
                            isValidate: false,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 30.0),
                            child: CustomTextFiled(
                              title: 'Password',
                              controller:
                                  logController.registerPasswordTxtController,
                              hintText: 'Password',
                              maxlenght: 15,
                              isObscureText: !logController.isResPass.value,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    debugPrint(
                                        'isVisibility Pass: ${logController.isResPass.value}');
                                    logController.isResPass.value =
                                        !logController.isResPass.value;
                                  },
                                  icon: Icon(logController.isResPass.value
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              isValidate: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                CustomButtons(
                  title: 'Sign Up',
                  onTap: () {
                    logController.onRegister();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account? ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff6A6A6A)),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.go("/login");
                      },
                      child: Text("Log In",
                          style: Theme.of(context).textTheme.titleMedium!),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
