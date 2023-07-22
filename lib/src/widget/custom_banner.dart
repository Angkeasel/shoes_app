// import 'package:allpay/src/constant/app_setting.dart';
// import 'package:allpay/src/module/my_card/controller/mycard_controller.dart';
// import 'package:allpay/src/widget/custom_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class AdvertisingBanner extends StatelessWidget {
//   const AdvertisingBanner({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final con = Get.put(MyCardController());
//     return Obx(
//       () => Column(
//         children: [
//           Container(
//             color: Colors.transparent,
//             height: 200,
//             width: MediaQuery.of(context).size.width,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Swiper(
//                 onIndexChanged: (index) {
//                   con.slide.value = index;
//                   con.update();
//                 },
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {},
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: con.visaCardList
//                             .asMap()
//                             .entries
//                             .map(
//                               (e) => Padding(
//                                 padding: const EdgeInsets.only(right: 20),
//                                 child: CustomCard(
//                                     width:
//                                         MediaQuery.of(context).size.width * 0.9,
//                                     height: 190,
//                                     date: e.value.date,
//                                     name: e.value.name,
//                                     nameCard: e.value.nameCard,
//                                     number: e.value.number,
//                                     onTap: () {},
//                                     colors: e.value.colors),
//                               ),
//                             )
//                             .toList(),
//                       ),
//                     ),
//                   );
//                 },
//                 autoplay: false,
//                 curve: Curves.easeInOut,
//                 itemCount: con.visaCardList.length,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 20),
//             child: AnimatedSmoothIndicator(
//               activeIndex: con.slide.value,
//               count: con.visaCardList.length,
//               effect: const ExpandingDotsEffect(
//                 activeDotColor: AppColor.primaryColor,
//                 dotColor: Color(0xffD9D9D9),
//                 expansionFactor: 3,
//                 spacing: 6,
//                 dotWidth: 9,
//                 dotHeight: 9,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
