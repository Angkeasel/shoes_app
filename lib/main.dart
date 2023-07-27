import 'package:allpay/firebase_options.dart';
import 'package:allpay/src/config/routers/router.dart';
import 'package:allpay/src/config/theme/theme.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:allpay/src/util/helper/android_notification_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // await runZonedGuarded(
  //   () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await LocalStorage.init();
  await _handleInitialMessage();
  await AndroidNotificationHelper.instance.init();

  await dotenv.load();
  _setupDevicePreference();
  runApp(const MyApp());
  // },
  // (error, _) {},
  // );
}

Future<void> _handleInitialMessage() async {
  final RemoteMessage? message =
      await FirebaseMessaging.instance.getInitialMessage();
  String? payload = message?.data['payload'];
  debugPrint('Notification 1');
  if (payload != null) {
    router.go(payload);
    // adminRouter.
  }
}

void _setupDevicePreference() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

final GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

final GlobalKey<OverlayState> overlayState = GlobalKey<OverlayState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: snackBarKey,
      routerConfig: router,
      theme: theme(),
      // home: MyNavbar(),
    );
  }
}
