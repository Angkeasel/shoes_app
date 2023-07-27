import 'dart:async';

import 'package:allpay/src/config/routers/router.dart';
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

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  final homeController = Get.put(HomeController());

  Future<void> tokenHandler(context) async {
    final token = await LocalStorage.getStringValue(key: 'access_token');

    // fetches();

    Timer(
      const Duration(seconds: 3),
      () async {
        try {
          if (token.isEmpty) {
            // await LocalStorage.storeData(key: 'first-time-open', value: true);
            final firstTimeOpen =
                await LocalStorage.getBooleanValue(key: 'first_time_open');
            if (firstTimeOpen == false) {
              router.go('/boarding');
            } else {
              router.go('/login');
            }
          } else {
            router.go('/');
          }
        } catch (_) {}
      },
    );
  }

  late final AnimationController _animationController;
  final _position =
      Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero);
  final _opacity = Tween<double>(begin: 0, end: 1);

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.forward();
    tokenHandler(context);
    super.initState();
  }

  // _fetches() {
  //   homeController.detailsModelList.asMap().entries.map((e) {
  //     debugPrint('=============> fetch fev${e.value.isFav!}');
  //     if (e.value.isFav!) {
  //       debugPrint('=============> fetch fev');
  //       // homeController.favCartList.add(e.value);
  //     }
  //     return homeController.favCartList;
  //   }).toList();
  // }

  @override
  Widget build(BuildContext context) {
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
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (_, __) => SlideTransition(
                    position: _position.animate(
                      CurvedAnimation(
                        parent: _animationController,
                        curve: Curves.fastEaseInToSlowEaseOut,
                      ),
                    ),
                    child: FadeTransition(
                      opacity: _opacity.animate(_animationController),
                      child: Image.asset(
                        'assets/png/nike_logo.png',
                        width: 150,
                      ),
                    ),
                  ),
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
