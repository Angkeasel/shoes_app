import 'package:allpay/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_setting.dart';

class ChangeLimitCard extends StatefulWidget {
  const ChangeLimitCard({super.key});

  @override
  State<ChangeLimitCard> createState() => _ChangeLimitCardState();
}

class _ChangeLimitCardState extends State<ChangeLimitCard> {
  double sliderValue = 1;
  double sliderValue1 = 1;
  @override
  Widget build(BuildContext context) {
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
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Change Limit Card M-Card",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/svg/More Circle.svg",
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Text(
              'Limit Per Transaction',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xfff3f3f3)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "\$ ${sliderValue.toInt()}",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SliderTheme(
              data: SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorTextStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                valueIndicatorColor: AppColor.primaryColor,
              ),
              child: Slider(
                thumbColor: Colors.white,
                inactiveColor: const Color(0xffBDBDBD),
                autofocus: false,
                value: sliderValue,
                divisions: 10000,
                min: 1,
                max: 10000,
                label: sliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Cash Withdrawal Limit',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xfff3f3f3)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "\$ ${sliderValue1.toInt()}",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SliderTheme(
              data: SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
                valueIndicatorTextStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                valueIndicatorColor: AppColor.primaryColor,
              ),
              child: Slider(
                thumbColor: Colors.white,
                inactiveColor: const Color(0xffBDBDBD),
                autofocus: false,
                value: sliderValue1,
                divisions: 10000,
                min: 1,
                max: 10000,
                label: sliderValue1.round().toString(),
                onChanged: (value) {
                  setState(() {
                    sliderValue1 = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              hight: 50,
              isDisable: false,
              isOutline: false,
              title: "Save Changes",
              textStyle: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
