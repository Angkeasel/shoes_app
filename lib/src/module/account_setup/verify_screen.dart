import 'package:allpay/src/module/account_setup/verify_screen_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: SvgPicture.asset(
          'assets/svg/arrowBack.svg',
          fit: BoxFit.none,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Let’s Verify Your Identity',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'We are required to veryfy your identity before you can use the service. Your information will be encrypted and stored securely.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/svg/logo education-01.svg',
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Row(
          children: [
            // Expanded(
            //   child: CustomButton(
            //     onPressed: () {},
            //     title: 'Skip',
            //     isOutline: true,
            //     hight: 50,
            //     isDisable: false,
            //   ),
            // ),
            // const SizedBox(
            //   width: 20,
            // ),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerifyScreenDetail(),
                    ),
                  );
                },
                title: 'Next',
                isOutline: false,
                hight: 50,
                isDisable: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
