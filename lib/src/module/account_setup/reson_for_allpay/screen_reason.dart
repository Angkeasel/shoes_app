import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/custom_button.dart';
import '../verify_screen.dart';
import 'custom/custom_card_for_reason.dart';

class ScreenReason extends StatelessWidget {
  const ScreenReason({Key? key}) : super(key: key);

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
              'Reason for Using AllPay',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Text(
              'We want to provide the best experience \naccording to your needs',
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
          const CustomCardReason(
            text: 'Spend or save daily',
          ),
          const CustomCardReason(
            text: 'Spend while travelling',
          ),
          const CustomCardReason(
            text: 'Send and manage money',
          ),
          const CustomCardReason(
            text: 'Gain exposure to financial assets',
          ),
          const CustomCardReason(
            text: 'Spend or save daily',
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
                      builder: (context) => const VerifyScreen(),
                    ),
                  );
                },
                title: 'Continue',
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
