import 'package:allpay/src/constant/app_setting.dart';
import 'package:allpay/src/module/my_card/screen/refund.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/custom_card.dart';
import '../controller/mycard_controller.dart';

class ECardDetails extends StatelessWidget {
  const ECardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardDetailCon = Get.put(MyCardController());
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
              "E-Card",
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
              onTap: () {
                // onShowBottomSheet(
                //     title: "E-Card Sitting",
                //     isWidget: false,
                //     isContainer: false,
                //     context: context,
                //     colors: Colors.transparent,
                //     isSubtitle: true,
                //     height: 385,
                //     appbar: true,
                //     isTitle: false,
                //     child: Column(
                //         children: cardDetailCon.settingEcardList
                //             .asMap()
                //             .entries
                //             .map((e) => Padding(
                //                   padding: const EdgeInsets.all(20.0),
                //                   child: CustomRowSetting(
                //                     settingModel: e.value,
                //                     onTap: () {
                //                       Navigator.push(
                //                           context,
                //                           MaterialPageRoute(
                //                               builder: (context) =>
                //                                   const TopUpCard()));
                //                       debugPrint('1234567890');
                //                     },
                //                   ),
                //                 ))
                //             .toList()));
              },
              child: SvgPicture.asset(
                "assets/svg/Setting.svg",
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.primaryColor),
                    child: Center(
                      child: Text(
                        'Detail',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 49,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 1, color: AppColor.primaryColor),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'Transactions',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: Colors.black12,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Balance',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Spacer(),
                Text(
                  '\$12.345',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomCard(
              width: double.infinity,
              height: 190,
              // onTap: () {},
              colors: Color(0xffFF981F),
              date: "02/30",
              nameCard: "E-Card",
              name: "Anny Jolly",
              number: "● ● ●  ● ● ●  ● ● ● ● ● ● 1234",
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              'Tap the card to see the number and CV',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 11,
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: Colors.black12,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 12,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff407BFF).withOpacity(0.1),
                          ),
                          height: 50,
                          width: 50,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/topup.svg',
                              height: 20,
                              width: 15,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30,
                          ),
                          child: Text(
                            'Top Up',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Refund()));
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 12,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xff407BFF).withOpacity(0.1),
                            ),
                            height: 50,
                            width: 50,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg/Bold.svg',
                                height: 20,
                                width: 15,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 30,
                            ),
                            child: Text(
                              'Refund',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 163,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 30, bottom: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Limit Settings',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColor.primaryColor),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Edit-Bold.svg'),
                                    const Spacer(),
                                    Text(
                                      'Edit',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.black12,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Limit Per Transaction',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        Text(
                          '\$900',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
