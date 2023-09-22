import 'package:allpay/src/module/profile/controller/view_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../constant/app_setting.dart';
import '../../cores/wolk_though/controller/onboarding_controller.dart';

class ButtomNavigationBar extends StatelessWidget {
  const ButtomNavigationBar({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final bottomBarCon = Get.put(OnBoardingController());
    final viewOrderCon = Get.put(ViewOrderController());

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // resizeToAvoidBottomInset: false,
      body: child,
      bottomNavigationBar: Container(
        color: AppColor.backgroundColor,
        height: 90,
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: _selectedIndex(context),
            onTap: (index) {
              _onItemTapped(index, context);
              bottomBarCon.activeIndex.value = index;
            },
            selectedItemColor: Colors.amber[800],
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            selectedLabelStyle: const TextStyle(
                color: AppColor.primaryColor, fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      bottomBarCon.activeIndex.value == 0
                          ? 'assets/svg/selecthome-2.svg'
                          : 'assets/svg/home-2.svg',
                      height: 26,
                    ),
                  ],
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        bottomBarCon.activeIndex.value == 1
                            ? 'assets/svg/fav.svg'
                            : 'assets/svg/unfav.svg',
                        height: 26,
                      ),
                    ],
                  ),
                  label: 'Statistics'),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                        boxShadow: [
                          BoxShadow(blurRadius: 7, color: Color(0xFF6E98F8))
                        ]),
                    child: SvgPicture.asset(
                      bottomBarCon.activeIndex.value == 2
                          ? 'assets/svg/bag-2.svg'
                          : 'assets/svg/bag-2.svg',
                      height: 20,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: Image.asset(
                  bottomBarCon.activeIndex.value == 3
                      ? 'assets/png/unNotification.png'
                      : 'assets/png/notification.png',
                  color: bottomBarCon.activeIndex.value == 3
                      ? Colors.blue
                      : Colors.grey,
                  height: 26,
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        bottomBarCon.activeIndex.value == 4
                            ? 'assets/svg/profile.svg'
                            : 'assets/svg/unProfile.svg',
                        // color: activeIndex == 4 ? Colors.blue : Colors.grey,
                        height: 26,
                      ),
                    ],
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

_selectedIndex(BuildContext context) {
  final bottomBarCon = Get.put(OnBoardingController());
  final String location = GoRouterState.of(context).location;

  if (location.startsWith('/profile-rourter')) {
    bottomBarCon.activeIndex(4);
    return 4;
  }
  if (location.startsWith('/notification')) {
    bottomBarCon.activeIndex(3);
    return 3;
  }
  if (location.startsWith('/testing-rourter')) {
    return 2;
  }
  if (location.contains('favorite')) {
    bottomBarCon.activeIndex(1);
    debugPrint("RETURNED");
    return 1;
  }
  if (location == '/') {
    bottomBarCon.activeIndex(0);
    return 0;
  }
  return 0;
}

_onItemTapped(int index, BuildContext context) {
  switch (index) {
    case 0:
      GoRouter.of(context).go('/');
      break;
    case 1:
      GoRouter.of(context).go('/favorite-router');
      break;
    case 2:
      GoRouter.of(context).push('/cart');
      break;
    case 3:
      GoRouter.of(context).go('/notification');
      break;
    case 4:
      GoRouter.of(context).go('/profile/-rourter');
      break;
  }
}
