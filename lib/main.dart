import 'package:allpay/src/config/routers/go_route.dart';
import 'package:allpay/src/config/theme/theme.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage().initLocalStorage();
  runApp(const MyApp());
}

final GlobalKey<ScaffoldMessengerState> snackBarKey=GlobalKey<ScaffoldMessengerState>();
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
