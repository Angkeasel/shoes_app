import 'package:allpay/src/cores/wolk_though/controller/onboarding_controller.dart';
import 'package:allpay/src/widget/home/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../module/auth/local_storage/local_storage.dart';
import '../widget/custom_onboarding_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  void page() {}
  @override
  Widget build(BuildContext context) {
    final onBoardCon = Get.put(OnBoardingController());
    PageController pageController = PageController();
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
                debugPrint('======> $currentIndex');
              });
            },
            itemCount: onBoardCon.boardingList.length,
            itemBuilder: (context, index) {
              return CustomBoardingScreen(
                isFirst: onBoardCon.boardingList[index].isFirst,
                bgBoarding: onBoardCon.boardingList[index].bgBoarding,
                picImage: onBoardCon.boardingList[index].picImage,
                rightImage: onBoardCon.boardingList[index].rightImage,
                topImage: onBoardCon.boardingList[index].topImage,
                heightImage: onBoardCon.boardingList[index].heightImage,
                bvector: onBoardCon.boardingList[index].bvector,
                vHeight: onBoardCon.boardingList[index].vHeight,
                lTitle: onBoardCon.boardingList[index].lTitle,
                lvector: onBoardCon.boardingList[index].lvector,
                title: onBoardCon.boardingList[index].title,
                subTitle: onBoardCon.boardingList[index].subTitle,
                titleButton: onBoardCon.boardingList[index].titleButton,
                onTapButton: () async {
                  if (currentIndex == 0 || currentIndex == 1) {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  } else {
                    context.go('/login');
                  }
                },
              );
            }),
        Positioned(
          bottom: 180,
          child: SmoothPageIndicator(
            controller: pageController,
            count: onBoardCon.boardingList.length,
            effect: const ExpandingDotsEffect(
                dotWidth: 12.0,
                dotHeight: 5.0,
                dotColor: Colors.amber,
                activeDotColor: Colors.white),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          right: 20,
          child: CustomButtons(
            color: Colors.white,
            textColor: Colors.black,
            title: currentIndex == 0 ? 'Get Started' : 'Next',
            onTap: () {
              if (onBoardCon.boardingList.length - 1 == currentIndex) {
                LocalStorage.storeData(key: 'first_time_open', value: true);
                context.go('/login');
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              }
            },
          ),
        )
      ],
    )
        //  CarouselSlider(
        //     items: onBoardCon.boardingList.asMap().entries.map((e) {
        //       return CustomBoardingScreen(
        //         isFirst: true,
        //         bgBoarding: e.value.bgBoarding,
        //         topImage: e.value.topImage,
        //         rightImage: e.value.rightImage,
        //         picImage: e.value.picImage,
        //         heightImage: e.value.heightImage,
        //         bvector: e.value.bvector,
        //         lTitle: e.value.lTitle,
        //         vHeight: e.value.vHeight,
        //         title: e.value.title,
        //         subTitle: e.value.subTitle,
        //       );
        //     }).toList(), options: CarouselOptions(
        //        height: 280,
        //     )),
        );
  }
}
