import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/app_setting.dart';

ThemeData theme() {
  return ThemeData.light().copyWith(
    primaryColor: AppColor.primaryColor,
    secondaryHeaderColor: AppColor.secondaryColor,
    disabledColor: AppColor.disableColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.backgroundColor,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.appbarColor,
      ),
      elevation: 1.5,
      shadowColor: AppColor.darkColor,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: ' Inter-Bold',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColor.darkColor,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Inter-SemiBold',
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: AppColor.darkColor,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.darkColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.darkColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColor.darkColor,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColor.darkColor,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColor.darkColor,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColor.darkColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xff000000),
      ),
      labelLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
      ),
    ),
    colorScheme: const ColorScheme(
        background: Color(0xffffffff),
        brightness: Brightness.light,
        error: Colors.red,
        onBackground: Colors.white,
        onError: Colors.red,
        onPrimary: AppColor.primaryColor,
        onSecondary: AppColor.secondaryColor,
        onSurface: AppColor.primaryColor,
        primary: AppColor.primaryColor,
        secondary: AppColor.secondaryColor,
        surface: AppColor.primaryColor),
  );
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import '../../constant/app_setting.dart';

// ThemeData theme() {
//   return ThemeData.light().copyWith(
//     primaryColor: AppColor.primaryColor,
//     secondaryHeaderColor: AppColor.secondaryColor,
//     disabledColor: AppColor.disableColor,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.white,
//       centerTitle: true,
//       systemOverlayStyle: SystemUiOverlayStyle.dark,
//       iconTheme: IconThemeData(color: Colors.black),
//       titleTextStyle: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 2,
//         fontWeight: FontWeight.bold,
//         color: AppColor.darkColor,
//       ),
//       elevation: 1.5,
//       shadowColor: AppColor.darkColor,
//     ),
//     textTheme: const TextTheme(
//       displayLarge: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: AppColor.darkColor,
//       ),
//       displayMedium: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 28,
//         fontWeight: FontWeight.w600,
//         color: AppColor.darkColor,
//       ),
//       displaySmall: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 18,
//         fontWeight: FontWeight.w600,
//         color: AppColor.darkColor,
//       ),
//       headlineMedium: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color: AppColor.darkColor,
//       ),
//       headlineSmall: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 14,
//         fontWeight: FontWeight.normal,
//         color: AppColor.darkColor,
//       ),
//       titleLarge: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 12,
//         fontWeight: FontWeight.normal,
//         color: AppColor.darkColor,
//       ),
//       titleMedium: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 16,
//         fontWeight: FontWeight.normal,
//         color: AppColor.darkColor,
//       ),
//       titleSmall: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 14,
//         fontWeight: FontWeight.normal,
//         color: AppColor.darkColor,
//       ),
//       bodyLarge: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 14,
//         fontWeight: FontWeight.normal,
//         color: Colors.white,
//       ),
//       bodyMedium: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 12,
//         fontWeight: FontWeight.normal,
//         color: Colors.white,
//       ),
//       bodySmall: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color: Color(0xff000000),
//       ),
//       labelLarge: TextStyle(
//         fontFamily: 'poppins-regular',
//         fontSize: 14,
//         fontWeight: FontWeight.bold,
//         color: AppColor.primaryColor,
//       ),
//     ),
//     colorScheme: const ColorScheme(
//         background: Color(0xfff7f7f7),
//         brightness: Brightness.light,
//         error: Colors.red,
//         onBackground: Colors.white,
//         onError: Colors.red,
//         onPrimary: AppColor.primaryColor,
//         onSecondary: AppColor.secondaryColor,
//         onSurface: AppColor.primaryColor,
//         primary: AppColor.primaryColor,
//         secondary: AppColor.secondaryColor,
//         surface: AppColor.primaryColor),
//   );
// }

