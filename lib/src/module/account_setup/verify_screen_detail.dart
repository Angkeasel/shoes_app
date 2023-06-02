import 'package:allpay/src/module/account_setup/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import 'reson_for_allpay/custom/custom_card_verify_detail.dart';

class VerifyScreenDetail extends StatelessWidget {
  const VerifyScreenDetail({Key? key}) : super(key: key);

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
              'Proof of Residency  ',
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
            child: Center(
              child: Text(
                'Prove your live in United States',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50, bottom: 20),
            child: Text(
              'Nationality',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const CustomCardVerifyDetail()
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
