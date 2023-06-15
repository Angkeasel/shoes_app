import 'dart:async';

import 'package:allpay/src/config/routers/go_route.dart';
import 'package:allpay/src/module/auth/local_storage/local_storage.dart';
import 'package:allpay/src/module/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/app_setting.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final homeController = Get.put(HomeController());
  String? token;
  onNavigate(context) async {
    WidgetsFlutterBinding.ensureInitialized();
    // var token = await LocalStorage.getStringValue(key: 'access_token');
    await LocalStorage.storeData(
        key: 'access_token',
        value:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjg2MDI4MTU0LCJleHAiOjE2OTQ2NjgxNTR9.38JZMdfPKZGVfKtunvnJhshfnZfNenvSRNB5_Sbhzv8');
    fetches();
    try {
      if (token != '' || token!.isEmpty) {
        Timer(const Duration(seconds: 3), () => router.go('/boarding'));
      } else {
        router.go('home-router');
      }
    } catch (e) {}
    // Future.delayed(
    //   const Duration(seconds: 2),
    //   () {
    //     context.go('/boarding');
    //     // Navigator.pushReplacement(
    //     //   context
    //     //   // MaterialPageRoute(
    //     //   //   builder: (context) =>
    //     //   // ),
    //     // );
    //   },
    // );
    //Timer(const Duration(seconds: 3), () => router.go('/boarding'));
    //await LocalStorage.init();
  }

  @override
  void initState() {
    onNavigate(context);
    super.initState();
  }

  fetches() {
    debugPrint(
        '=============> fetch fev${homeController.detailsModelList.length}}');
    homeController.detailsModelList.asMap().entries.map((e) {
      debugPrint('=============> fetch fev${e.value.isFav!}');
      if (e.value.isFav!) {
        debugPrint('=============> fetch fev');
        // homeController.favCartList.add(e.value);
      }
      return homeController.favCartList;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    onNavigate(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/png/nike_logo.png',
                  height: 140,
                  width: 150,
                ),
              ),
              const CupertinoActivityIndicator(
                color: AppColor.textDarkColor,
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
