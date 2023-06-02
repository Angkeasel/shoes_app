import 'package:allpay/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widget/custom_fill.dart';
import '../controller/controller.dart';
import 'new_password_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final forgetPassWordController = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/svg/arrowBack.svg",
            fit: BoxFit.none,
          ),
        ),
        title: Text(
          "Forgot Password",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 335,
                      width: double.infinity,
                      child: SvgPicture.asset(
                          "assets/svg/Forgot password-rafiki 2.svg"),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    Text(
                      'Select which contact details should we use to reset your password',
                      style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    Column(
                      children: forgetPassWordController.contactFilllist
                          .asMap()
                          .entries
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: CustomFillContact(
                                contactfill: e.value,
                                isSelect:
                                    forgetPassWordController.isSelect.value ==
                                        e.key,
                                onTap: () {
                                  forgetPassWordController.isSelect.value =
                                      e.key;
                                },
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: CustomButton(
                hight: 50,
                title: 'Next',
                textStyle: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
                isOutline: false,
                isDisable: false,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewPassWordScreen(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
