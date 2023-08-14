import 'dart:async';

import 'package:allpay/src/cores/wolk_though/page/onboarding_screen.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:allpay/src/module/auth/sign_in/screen/forget_password.dart';
import 'package:allpay/src/module/auth/sign_in/screen/register_screen.dart';
import 'package:allpay/src/module/home/pages/detail_page.dart';
import 'package:allpay/src/module/home/pages/home_page.dart';
import 'package:allpay/src/module/home/pages/popular_page.dart';
import 'package:allpay/src/module/home/pages/search_result_screen.dart';
import 'package:allpay/src/module/my_card/screen/add_new_delivery_address.dart';
import 'package:allpay/src/module/my_card/screen/choose_location_address.dart';
import 'package:allpay/src/module/my_card/screen/my_card_page.dart';
import 'package:allpay/src/module/profile/page/edit_profile.dart';
import 'package:allpay/src/module/profile/page/profile_page.dart';
import 'package:allpay/src/module/profile/page/view_order_detail.dart';
import 'package:allpay/src/module/profile/page/view_order_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../cores/wolk_though/page/splash_screen.dart';
import '../../module/auth/sign_in/screen/logins_screens.dart';
import '../../module/auth/sign_in/screen/vertify_otp_screen.dart';
import '../../module/buttomnavigationbar/bottomnavigationbar.dart';
import '../../module/favourite/favourite_page.dart';
import '../../module/home/pages/search_screen.dart';
import '../../module/home/pages/products_by_category.dart';
import '../../module/my_card/screen/invoice_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = Get.key;
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

const _initialLocation = '/sso';

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: _initialLocation,
  redirect: _redirect,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (_, state, child) {
        return ButtomNavigationBar(
          child: child,
        );
      },
      routes: _shellRoutes,
    ),

    // GoRoute(
    //   name: 'AllFav',
    //   path: '/fav',
    //   builder: (_, state) => const FavouritePage(),
    // ),
    GoRoute(
      path: '/sso',
      builder: (_, state) => const SplashScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/boarding',
      builder: (_, state) => const OnBoardingScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/login',
      builder: (_, state) => const LoginScreens(),
      routes: const [],
    ),
    GoRoute(
      path: '/register',
      builder: (_, state) => RegisterScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/fogetpass',
      builder: (_, state) => const ForgetPassword(),
      routes: const [],
    ),
    GoRoute(
      path: '/otp',
      builder: (_, state) => const VertifyOTPScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/view-order',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (_, state) {
        return const ViewOrderPage();
      },
      routes: <GoRoute>[
        GoRoute(
          path: 'view-order-detail/:id',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (_, state) {
            int id = int.parse(state.pathParameters['id']!);
            return ViewOrderDetailPage(id: id);
          },
        ),
      ],
    ),
  ],
);

final _shellRoutes = <GoRoute>[
  GoRoute(
    path: '/',
    pageBuilder: (_, state) => const NoTransitionPage(child: HomePage()),
    routes: <GoRoute>[
      // GoRoute(
      //     parentNavigatorKey: _rootNavigatorKey,
      //     path: 'detail',
      //     builder: ( _,  state) {
      //       final detailModel = state.extra as DetailModel;
      //       return DetailPage(detailModel: detailModel);
      //     },
      //     routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'cart',
        pageBuilder: (_, state) => CustomTransitionPage(
          child: const MyCardPage(),
          transitionsBuilder: (_, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut),
            ),
            child: child,
          ),
        ),
      ),

      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: 'detail/:id',
          builder: (_, state) => DetailPage(
                id: int.tryParse(state.pathParameters['id'] ?? '')!,
              ),
          routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'popular-router',
        builder: (_, state) => PopularPage(),
        routes: const [],
      ),
      // GoRoute(
      //     parentNavigatorKey: _rootNavigatorKey,
      //     path: 'search/:id',
      //     builder: (_, state) => SearchResultScreen(
      //         id: int.tryParse(state.pathParameters['id']!)!),
      //     routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'go-search',
        builder: (_, state) => const SearchScreen(),
        routes: [
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'search-result',
            builder: (_, state) => SearchResultScreen(
              textSearch: state.queryParameters['textSearch'],
              // name: state.queryParameters['name'] ?? '',
            ),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'category',
        builder: (_, state) => ProductsByCategoryPage(
          id: int.tryParse(state.queryParameters['id'] ?? ''),
          name: state.queryParameters['name'],
          // name: state.queryParameters['name'] ?? '',
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'mycard-router',
        builder: (_, state) => const MyCardPage(),
        routes: const [],
      ),
    ],
  ),
  GoRoute(
    name: 'AllFav',
    path: '/fav',
    builder: (_, state) => const FavouritePage(),
  ),

  GoRoute(
    path: '/favorite-router',
    pageBuilder: (_, state) => const NoTransitionPage(
      child: FavouritePage(),
    ),
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'detail/:id',
        builder: (_, state) => DetailPage(
          id: int.tryParse(state.pathParameters['id'] ?? '')!,
        ),
      ),
    ],
  ),
  //GoRoute(path: '/boarding',builder: (_, state)=>const OnBoardingScreen()),

  GoRoute(
    path: '/mycart/-rourter',
    pageBuilder: (_, state) => const NoTransitionPage(child: InvoiceScreen()),
  ),
  GoRoute(
    path: '/profile/-rourter',
    pageBuilder: (_, state) => const NoTransitionPage(child: ProfilePage()),
    routes: <GoRoute>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'edit-profile',
        builder: (_, state) => const EditProfilePage(),
      )
    ],
  ),

  // Add new address

  GoRoute(
    path: '/add-new-delivery-address',
    builder: (context, state) {
      return const AddNewDeliveryAddress();
    },
    routes: [
      GoRoute(
        path: 'choose-location-address',
        builder: (context, state) {
          return const ChooseLocationAddress();
        },
      )
    ],
  ),
];

const noAuthRoute = [
  '/sso',
  '/boarding',
  '/login',
  '/register',
  '/fogetpass',
  '/otp'
];

FutureOr<String?> _redirect(_, state) async {
  final location = state.location;
  final token = await LocalStorage.getStringValue(key: 'access_token');
  debugPrint('TK : $token');
  debugPrint('Location => $location');
  if (!noAuthRoute.any((route) => location.contains(route)) && token.isEmpty) {
    debugPrint('Error: Route Not allow');
    return '/login';
  }
  return null;
}
