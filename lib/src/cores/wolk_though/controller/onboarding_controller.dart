
import 'package:get/get.dart';

import '../widget/custom_onboarding_screen.dart';

class OnBoardingController extends GetxController {
   final activeIndex = 0.obs;
  List<CustomBoardingScreen> boardingList = [
    const CustomBoardingScreen(
      isFirst: true,
    ),
    const CustomBoardingScreen(
      isFirst: false,
      bgBoarding: 'assets/image/Onboard-2.png',
      topImage: 160,
      rightImage: 40,
      picImage: 'assets/image/Spring_prev_ui 1.png',
      heightImage: 300,
      bvector: 260,
      lvector: -10,
      vHeight: 180,
      lTitle: 35,
      title: 'Let’s Start Journey With Nike',
      subTitle: 'Smart, Gorgeous & Fashionable Collection Explor Now',
      titleButton: 'Next',
    ),
    const CustomBoardingScreen(
      isFirst: false,
      bgBoarding: 'assets/image/Onboard-3.png',
      topImage: 50,
      rightImage: 0,
      heightImage: 530,
      picImage: "assets/image/Aire Jordan Nike.png",
      bvector: 260,
      lvector: -10,
      vHeight: 180,
      lTitle: 45,
      title: 'You Have the \nPower To',
      subTitle: 'There Are Many Beautiful And Attractive Plants To Your Room',
      titleButton: 'Next',
    )
  ];
}
