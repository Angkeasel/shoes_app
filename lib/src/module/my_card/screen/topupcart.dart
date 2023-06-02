import 'package:allpay/src/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/app_setting.dart';
import '../../../widget/custom_bottomshet.dart';
import '../../../widget/custom_button.dart';

class TopUpCard extends StatefulWidget {
  const TopUpCard({super.key});

  @override
  State<TopUpCard> createState() => _TopUpCardState();
}

class _TopUpCardState extends State<TopUpCard> {
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
              "Top Up E-Card",
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomCard(
              width: double.infinity,
              height: 190,
              colors: Color(0xffFF981F),
              date: "02/30",
              nameCard: "M-Card",
              name: "Anny Jolly",
              number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Top Up Amount',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
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
            CustomButton(
              hight: 50,
              isDisable: false,
              isOutline: false,
              title: "Continue",
              textStyle: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
              onPressed: () {
                onShowBottomSheet(
                  title: "E-Card Sitting",
                  isWidget: false,
                  isContainer: false,
                  context: context,
                  colors: Colors.transparent,
                  isSubtitle: true,
                  height: 385,
                  appbar: true,
                  isTitle: false,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        const CustomCard(
                          width: double.infinity,
                          height: 190,
                          // onTap: () {},
                          colors: Color(0xffFF981F),
                          date: "02/30",
                          nameCard: "M-Card",
                          name: "Anny Jolly",
                          number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'CVV code: 579',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff407BFF).withOpacity(0.1),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                'assets/svg/info-fill.svg',
                                height: 15,
                                width: 15,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Please don’t give CVV code to anyone!',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff407BFF),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
