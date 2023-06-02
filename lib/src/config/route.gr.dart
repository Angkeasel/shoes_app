// // **************************************************************************
// // AutoRouteGenerator
// // **************************************************************************

// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // AutoRouteGenerator
// // **************************************************************************
// //
// // ignore_for_file: type=lint

// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:auto_route/auto_route.dart' as _i7;
// import 'package:flutter/material.dart' as _i8;

// import '../module/home/pages/home_page.dart' as _i3;
// import '../module/my_card/screen/my_card_page.dart' as _i5;
// import '../module/profile/page/profile_page.dart' as _i6;
// import '../module/scan/scan_page.dart' as _i2;
// import '../module/favourite/favourite_page.dart' as _i4;
// import '../module/buttomnavigationbar/mynavbar.dart' as _i1;

// class AppRouter extends _i7.RootStackRouter {
//   AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
//       : super(navigatorKey);

//   @override
//   final Map<String, _i7.PageFactory> pagesMap = {
//     MyNavbar.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i1.MyNavbar());
//     },
//     ScanerRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i2.ScanPage());
//     },
//     HomeRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i3.HomePage());
//     },
//     StatisticRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i4.StatisticPage());
//     },
//     ScanRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i2.ScanPage());
//     },
//     MyCardRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child:  _i5.MyCardPage());
//     },
//     ProfileRouter.name: (routeData) {
//       return _i7.MaterialPageX<dynamic>(
//           routeData: routeData, child: const _i6.ProfilePage());
//     }
//   };

//   @override
//   List<_i7.RouteConfig> get routes => [
//         _i7.RouteConfig(MyNavbar.name, path: '/', children: [
//           _i7.RouteConfig('#redirect',
//               path: '',
//               parent: MyNavbar.name,
//               redirectTo: 'home',
//               fullMatch: true),
//           _i7.RouteConfig(HomeRouter.name, path: 'home', parent: MyNavbar.name),
//           _i7.RouteConfig(StatisticRouter.name,
//               path: 'statistic', parent: MyNavbar.name),
//           _i7.RouteConfig(ScanRouter.name, path: 'scan', parent: MyNavbar.name),
//           _i7.RouteConfig(MyCardRouter.name,
//               path: 'my-card', parent: MyNavbar.name),
//           _i7.RouteConfig(ProfileRouter.name,
//               path: 'profile', parent: MyNavbar.name)
//         ]),
//         _i7.RouteConfig(ScanerRouter.name, path: '/scan')
//       ];
// }

// /// generated route for
// /// [_i1.MyNavbar]
// class MyNavbar extends _i7.PageRouteInfo<void> {
//   const MyNavbar({List<_i7.PageRouteInfo>? children})
//       : super(MyNavbar.name, path: '/', initialChildren: children);

//   static const String name = 'MyNavbar';
// }

// /// generated route for
// /// [_i2.ScanPage]
// class ScanerRouter extends _i7.PageRouteInfo<void> {
//   const ScanerRouter() : super(ScanerRouter.name, path: '/scan');

//   static const String name = 'ScanerRouter';
// }

// /// generated route for
// /// [_i3.HomePage]
// class HomeRouter extends _i7.PageRouteInfo<void> {
//   const HomeRouter() : super(HomeRouter.name, path: 'home');

//   static const String name = 'HomeRouter';
// }

// /// generated route for
// /// [_i4.StatisticPage]
// class StatisticRouter extends _i7.PageRouteInfo<void> {
//   const StatisticRouter() : super(StatisticRouter.name, path: 'statistic');

//   static const String name = 'StatisticRouter';
// }

// /// generated route for
// /// [_i2.ScanPage]
// class ScanRouter extends _i7.PageRouteInfo<void> {
//   const ScanRouter() : super(ScanRouter.name, path: 'scan');

//   static const String name = 'ScanRouter';
// }

// /// generated route for
// /// [_i5.MyCardPage]
// class MyCardRouter extends _i7.PageRouteInfo<void> {
//   const MyCardRouter() : super(MyCardRouter.name, path: 'my-card');

//   static const String name = 'MyCardRouter';
// }

// /// generated route for
// /// [_i6.ProfilePage]
// class ProfileRouter extends _i7.PageRouteInfo<void> {
//   const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

//   static const String name = 'ProfileRouter';
// }
