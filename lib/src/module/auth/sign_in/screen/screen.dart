import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/auth/sign_in/screen/loginscreen.dart';
import 'package:flutter/material.dart';

import '../../../../widget/custom_button.dart';
import '../widget/custom_signin.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 194,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/png/Wallet-rafiki.png"),
              ),
              const Text(
                "Let's you in",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomSignin(
                image: "assets/png/fb.png",
                title: "Continue with Facebook",
              ),
              const CustomSignin(
                image: "assets/png/google.png",
                title: "Continue with Google",
              ),
              const CustomSignin(
                image: "assets/png/Apple.png",
                title: "Continue with Apple",
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 2.5,
                      color: const Color(
                        0xffE0E0E0,
                      )),
                  const Text(
                    "OR",
                    style: TextStyle(color: Color(0xffE0E0E0), fontSize: 16),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2.5,
                    color: const Color(
                      0xffE0E0E0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: "Next",
                isDisable: false,
                isOutline: false,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text(
                      " Sign up",
                      style: TextStyle(color: AppColor.primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
