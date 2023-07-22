import 'package:allpay/src/cores/wolk_though/page/onboarding_screen.dart';
import 'package:allpay/src/module/auth/sign_in/screen/forget_password.dart';
import 'package:allpay/src/module/auth/sign_in/screen/register_screen.dart';
import 'package:allpay/src/module/home/pages/detail_page.dart';
import 'package:allpay/src/module/home/pages/home_page.dart';
import 'package:allpay/src/module/home/pages/popular_page.dart';
import 'package:allpay/src/module/home/pages/search_result_screen.dart';
import 'package:allpay/src/module/my_card/screen/my_card_page.dart';
import 'package:allpay/src/module/profile/page/edit_profile.dart';
import 'package:allpay/src/module/profile/page/profile_page.dart';
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

// const _initialLocation = '/home-router';
const _initialLocation = '/sso';

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: _initialLocation,
  redirect: (context, state) {
    return null;
  },
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ButtomNavigationBar(
          child: child,
        );
      },
      routes: _shellRoutes,
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/testing-rourter',
      pageBuilder: (context, state) => CustomTransitionPage(
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
      path: '/sso',
      builder: (context, state) => const SplashScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const OnBoardingScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreens(),
      routes: const [],
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
      routes: const [],
    ),
    GoRoute(
      path: '/fogetpass',
      builder: (context, state) => const ForgetPassword(),
      routes: const [],
    ),
    GoRoute(
      path: '/otp',
      builder: (context, state) => const VertifyOTPScreen(),
      routes: const [],
    ),
  ],
);

final _shellRoutes = <GoRoute>[
  GoRoute(
    path: '/home-router',
    pageBuilder: (_, state) => const NoTransitionPage(child: HomePage()),
    routes: <GoRoute>[
      // GoRoute(
      //     parentNavigatorKey: _rootNavigatorKey,
      //     path: 'detail',
      //     builder: (BuildContext context, GoRouterState state) {
      //       final detailModel = state.extra as DetailModel;
      //       return DetailPage(detailModel: detailModel);
      //     },
      //     routes: const <GoRoute>[]),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: 'detail/:id',
          builder: (_, GoRouterState state) => DetailPage(
                id: int.tryParse(state.pathParameters['id'] ?? '')!,
              ),
          routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'popular-router',
        builder: (context, state) => PopularPage(),
        routes: const [],
      ),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: 'search/:id',
          builder: (BuildContext context, GoRouterState state) =>
              SearchResultScreen(
                  id: int.tryParse(state.pathParameters['id']!)!),
          routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'search-router',
        builder: (context, state) => const SearchScreen(),
        routes: const [],
      ),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: 'category',
          builder: (_, GoRouterState state) => ProductsByCategoryPage(
                id: int.tryParse(state.queryParameters['id'] ?? ''),
                name: state.queryParameters['name'],
                // name: state.queryParameters['name'] ?? '',
              ),
          routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'mycard-router',
        builder: (context, state) => const MyCardPage(),
        routes: const [],
      ),
    ],
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
        builder: (_, GoRouterState state) => DetailPage(
          id: int.tryParse(state.pathParameters['id'] ?? '')!,
        ),
      ),
    ],
  ),
  //GoRoute(path: '/boarding',builder: (context, state)=>const OnBoardingScreen()),

  GoRoute(
    path: '/mycart/-rourter',
    pageBuilder: (BuildContext context, GoRouterState state) =>
        const NoTransitionPage(child: InvoiceScreen()),
  ),
  GoRoute(
    path: '/profile/-rourter',
    pageBuilder: (BuildContext context, GoRouterState state) =>
        const NoTransitionPage(child: ProfilePage()),
    routes: <GoRoute>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'edit-profile',
        builder: (BuildContext context, GoRouterState state) =>
            const EditProfilePage(),
      )
    ],
  ),
];
