import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTitle(
  BuildContext context, {
  String? title,
  GestureTapCallback? onTap,
  bool? isSeeAll = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Row(
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(),
        ),
        const Spacer(),
        if (isSeeAll == true)
          GestureDetector(
            onTap: onTap,
            child: Text(
              'See all',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColor.primaryColor),
            ),
          ),
      ],
    ),
  );
}

Widget customCartCategory(BuildContext context, {String? title, bool? isSelected = false, GestureTapCallback? onTap}) {
  return GestureDetector(
    onTap:onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:isSelected!? Colors.amber: AppColor.textDarkColor,
      ),
      height: 40,
      width: 108,
      child: Center(
        child: Text(
          title!,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(),
        ),
      ),
    ),
  );
}

// Widget customCard(
//   BuildContext context, {
//   String? title,
//   double? price,
//   String? image,
// }) {
//   return GestureDetector(
//     onTap: () {},
//     child: Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Positioned(
//           top: 60,
//           bottom: -60,
//           left: -10,
//           child: Container(
//             // height: 160,
//             width: 160,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8), color: Colors.white),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8, bottom: 10, right: 8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text(
//                         title!,
//                         style: Theme.of(context)
//                             .textTheme
//                             .titleMedium!
//                             .copyWith(
//                                 color: AppColor.darkColor,
//                                 fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         '\$$price',
//                         style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                             color: AppColor.primaryColor,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   Container(
//                     height: 25,
//                     width: 25,
//                     decoration: const BoxDecoration(boxShadow: [
//                       BoxShadow(
//                           color: Color(0xffEBEBEB),
//                           blurRadius: 5,
//                           spreadRadius: 1)
//                     ], shape: BoxShape.circle, color: Colors.white),
//                     child: SvgPicture.asset(
//                       'assets/svg/add.svg',
//                       fit: BoxFit.none,
//                       color: AppColor.primaryColor,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Column(
//           children: [
//             Container(
//               height: 149,
//               width: 140,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: const Color(0xfff1f1f1)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(left: 10, top: 10),
//                     height: 25,
//                     width: 25,
//                     child: SvgPicture.asset(
//                       'assets/svg/Vector.svg',
//                     ),
//                   ),
//                   Image.asset(
//                     image!,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

// Widget customCartFavourite(
//   BuildContext context,
// ) {
//   return Container(height: 180,width: ,);
// }


Widget customSlide(
  BuildContext context,
) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 120,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.textDarkColor,
      ),
      // height: 95,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/png/Rectangle 515.png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summer Sale',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColor.textLightColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Get discount everyday order, only valid for today",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColor.textLightColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '15% OFF',
                    style: GoogleFonts.jost(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // child: Stack(
      //   children: [
      //     Image.asset('assets/png/Rectangle 515.png'),
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Positioned(
      //         child: SizedBox(
      //           width: MediaQuery.of(context).size.width * 0.5,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Summer Sale',
      //                 style: Theme.of(context).textTheme.titleMedium!.copyWith(
      //                     color: AppColor.textLightColor,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               Text(
      //                 "Get discount everyday order, only valid for today",
      //                 maxLines: 2,
      //                 style: Theme.of(context).textTheme.titleSmall!.copyWith(
      //                     color: AppColor.textLightColor,
      //                     fontWeight: FontWeight.w500),
      //               ),
      //               Text(
      //                 '15% OFF',
      //                 style: GoogleFonts.jost(
      //                   fontSize: 32,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    ),
  );
}
