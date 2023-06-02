import 'package:allpay/src/module/my_card/screen/my_card_page.dart';
import 'package:allpay/src/widget/custom_button.dart';
import 'package:allpay/src/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_setting.dart';
import '../../../widget/custom_banner.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  double sliderValue = 1;
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
              "Refund E-Card",
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
                "assets/svg/Setting.svg",
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AdvertisingBanner(),
                  const Divider(
                    thickness: 1,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'X-Card Name',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const CustomTextFiled(
                    hintText: "Enter Your Name",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter Card Deposit',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
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
                    height: 20,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
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
                        builder: (context) =>  MyCardPage(),
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
