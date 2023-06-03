import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';

class CustomBoardingScreen extends StatelessWidget {
  final bool? isFirst;
  final String? bgBoarding;
  final double? topImage;
  final double? rightImage;
  final String? picImage;
  final double? heightImage;
  final double? bvector;
  final double? lvector;
  final double? vHeight;
  final double? lTitle;
  final String? title;
  final String? subTitle;
  final String? titleButton;
  final GestureTapCallback? onTapButton;

  const CustomBoardingScreen({
    super.key,
    this.isFirst = false,
    this.bgBoarding,
    this.topImage,
    this.rightImage,
    this.picImage,
    this.heightImage,
    this.bvector,
    this.lvector,
    this.vHeight,
    this.lTitle,
    this.subTitle,
    this.title,
    this.titleButton,
    this.onTapButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.asset(
          isFirst! ? 'assets/image/Onboard.png' : '$bgBoarding',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
          top: isFirst! ? 130 : topImage,
          right: isFirst! ? -140 : rightImage,
          child: Image.asset(
            isFirst! ? 'assets/image/image 3.png' : "$picImage",
            height: isFirst! ? 650 : heightImage,
          )),
      Positioned(
          bottom: isFirst! ? 245 : bvector,
          left: isFirst! ? -10 : lvector,
          child: Image.asset("assets/image/Vector.png",
              height: isFirst! ? 185 : vHeight)),
      isFirst!
          ? Positioned(
              top: 140,
              left: 80,
              right: 80,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WELLCOME TO NIKE",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w900,
                              fontSize: 30),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          : Positioned(
              bottom: 280,
              left: lTitle,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: Column(
                  children: [
                    Text(
                      title ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 12),
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        subTitle ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),
      Positioned(
        bottom: 40,
        left: 20,
        right: 20,
        child: CustomButtons(
            color: Colors.white,
            textColor: Colors.black,
            title: isFirst! ? 'Get Started' : titleButton,
            onTap: onTapButton),
      )
    ]);
  }
}
