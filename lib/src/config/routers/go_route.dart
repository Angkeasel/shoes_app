import 'package:allpay/src/cores/wolk_though/page/onboarding_screen.dart';
import 'package:allpay/src/module/auth/sign_in/screen/forget_password.dart';
import 'package:allpay/src/module/auth/sign_in/screen/register_screen.dart';
import 'package:allpay/src/module/home/pages/detail_page.dart';
import 'package:allpay/src/module/home/pages/home_page.dart';
import 'package:allpay/src/module/home/pages/popular_page.dart';
import 'package:allpay/src/module/my_card/screen/my_card_page.dart';
import 'package:allpay/src/module/profile/page/edit_profile.dart';
import 'package:allpay/src/module/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../cores/wolk_though/page/splash_screen.dart';
import '../../module/auth/sign_in/screen/logins_screens.dart';
import '../../module/auth/sign_in/screen/vertify_otp_screen.dart';
import '../../module/buttomnavigationbar/bottomnavigationbar.dart';
import '../../module/favourite/favourite_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: '/sso',
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
      routes: shellRoutes,
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

final shellRoutes = <GoRoute>[
  GoRoute(
    path: '/home-router',
    builder: (BuildContext context, GoRouterState state) => const HomePage(),
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
          builder: (BuildContext context, GoRouterState state) =>
              DetailPage(id: int.tryParse(state.pathParameters['id']!)!),
          routes: const <GoRoute>[]),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'popular-router',
        builder: (context, state) => PopularPage(),
        routes: const [],
      ),
    ],
  ),

  GoRoute(
    path: '/favorite-router',
    builder: (BuildContext context, GoRouterState state) =>
        const StatisticPage(),
    routes: const <GoRoute>[],
  ),
  //GoRoute(path: '/boarding',builder: (context, state)=>const OnBoardingScreen()),
  GoRoute(
    path: '/testing-rourter',
    builder: (BuildContext context, GoRouterState state) => const MyCardPage(),
    routes: const <GoRoute>[],
  ),
  GoRoute(
    path: '/mycart/-rourter',
    builder: (BuildContext context, GoRouterState state) => const MyCardPage(),
    routes: const <GoRoute>[],
  ),
  GoRoute(
    path: '/profile/-rourter',
    builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
    routes: <GoRoute>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: 'edit-profile',
        builder: (BuildContext context, GoRouterState state) =>
            const EditProfilePage(),
        routes: const <GoRoute>[],
      )
    ],
  ),
];
