import 'dart:async';

import 'package:allpay/src/config/routers/go_route.dart';
import 'package:allpay/src/config/theme/theme.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'src/util/helper/notification_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  await dotenv.load();
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await LocalStorage.init();

    await Firebase.initializeApp();

    await NotificationHelper.initial();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    runApp(const MyApp());
  }, (error, stackTrace) {});
}

final GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      theme: theme(),
      scaffoldMessengerKey: snackBarKey, //
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      // home: MyNavbar(),
    );
  }
}
