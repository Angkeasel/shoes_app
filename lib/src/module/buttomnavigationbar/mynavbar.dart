
// import 'package:allpay/src/constant/app_setting.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// class MyNavbar extends StatelessWidget {
//   const MyNavbar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsScaffold(
//       routes:   const [
//         //  HomeRouter(),
//         // StatisticRouter(),
//         // MyCardRouter(),
//         // // ScanRouter(),
//         // MyCardRouter(),
//         // ProfileRouter(),
//       ],
//       bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
//         currentIndex: tabsRouter.activeIndex,
//         onTap: (index) {
//           tabsRouter.setActiveIndex(index);

//           if (index == 2) {
//             // context.router.push(const ScanerRouter());
//           } else {
//             tabsRouter.setActiveIndex(index);
//           }
//         },
//         type: BottomNavigationBarType.fixed,
//         elevation: 0,
//         selectedFontSize: 0,
//         unselectedFontSize: 0,
//         selectedLabelStyle: const TextStyle(
//             color: AppColor.primaryColor, fontWeight: FontWeight.w500),
//         unselectedLabelStyle:
//             const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
//         items: [
//           BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Image.asset(
//                     'assets/png/home-2.png',
//                     height: 26,
//                     color:
//                         tabsRouter.activeIndex == 0 ? Colors.blue : Colors.grey,
//                   ),
//                 ],
//               ),
//               label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Image.asset(
//                     'assets/png/Icon.png',
//                     color:
//                         tabsRouter.activeIndex == 1 ? Colors.blue : Colors.grey,
//                     height: 26,
//                   ),
//                 ],
//               ),
//               label: 'Statistics'),
//           BottomNavigationBarItem(
//               icon: Container(
//                   padding: const EdgeInsets.all(15),
//                   decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: AppColor.primaryColor,
//                       boxShadow: [
//                         BoxShadow(blurRadius: 7, color: Color(0xFF6E98F8))
//                       ]),
//                   child: Image.asset(
//                     'assets/png/bag-2.png',
//                     height: 20,
//                   )),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Image.asset(
//                     'assets/png/iconNotification.png',
//                     color:
//                         tabsRouter.activeIndex == 3 ? Colors.blue : Colors.grey,
//                     height: 26,
//                   ),
//                 ],
//               ),
//               label: 'My Card'),
//           BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Image.asset(
//                     'assets/png/personal.png',
//                     color:
//                         tabsRouter.activeIndex == 4 ? Colors.blue : Colors.grey,
//                     height: 26,
//                   ),
//                 ],
//               ),
//               label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }
