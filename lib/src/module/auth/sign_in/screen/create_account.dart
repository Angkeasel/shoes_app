import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/auth/sign_in/screen/screen.dart';
import 'package:allpay/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../widget/custom_text.dart';
import '../controller/contoller.dart';
import '../widget/customsignin.dart';

class CreateAccoutn extends StatelessWidget {
  const CreateAccoutn({Key? key, this.isSelect = true}) : super(key: key);
  final bool? isSelect;
  @override
  Widget build(BuildContext context) {
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    final controller = Get.put(ControllerSignin());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 14,
            width: 15,
            margin: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              "assets/svg/arrowBack.svg",
              fit: BoxFit.none,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Obx(
            () => Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    "Create your Account",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                    hintText: "Email",
                    onTap: () {},
                    prifixIcon: controller.isInputEmail.value == ""
                        ? Image.asset("assets/png/email_grey.png")
                        : Image.asset("assets/png/black_email.png"),
                    initialValues: controllerEmail.text,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    onChanges: (e) {
                      controller.isInputEmail.value = e;
                    },
                  ),
                  CustomTextFiled(
                    controller: controllerPassword,
                    hintText: 'Password',
                    maxlenght: 4,
                    isObscureText: true,
                    prifixIcon: controller.isPassword.value == ""
                        ? Image.asset("assets/png/Lock.png")
                        : Image.asset("assets/png/Lock._bluepng.png"),
                    suffixIcon: controller.isPassword.value == ""
                        ? Image.asset("assets/png/eye_grey.png")
                        : Image.asset("assets/png/fill_eye_blue.png"),
                    initialValues: controllerPassword.text,
                    labelText: 'Password',
                    isValidate: false,
                    onChanges: (ps) {
                      controller.isPassword.value = ps;
                    },
                  ),
                  const SizedBox(
                    height: 51,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.isvalidate.value = true;

                          debugPrint(
                              "=====> ${controller.isvalidate.value = true}");
                        },
                        child: controller.isvalidate.value
                            ? Image.asset("assets/png/uncheck.png")
                            : Image.asset("assets/png/isclick.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Remember me"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    isDisable: controller.isPassword.value == "" ||
                        controller.isInputEmail.value == "",
                    isOutline: false,
                    textStyle: const TextStyle(color: Color(0xffBDBDBD)),
                    title: "Next",
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width / 4,
                        color: const Color(
                          0xffE0E0E0,
                        ),
                      ),
                      const Text(
                        " Or continue with ",
                        style:
                            TextStyle(color: Color(0xffE0E0E0), fontSize: 16),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width / 4,
                        color: const Color(
                          0xffE0E0E0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSigninAccoun(
                        image: "assets/png/fb.png",
                      ),
                      CustomSigninAccoun(
                        image: "assets/png/google.png",
                      ),
                      CustomSigninAccoun(
                        image: "assets/png/Apple.png",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => LoginScreen(),
                          //   ),
                          // );
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: AppColor.primaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
