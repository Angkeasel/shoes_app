import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../widget/home/custom_buttons.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Text("Order Detail"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset(
                    'assets/animations/success_animation.json',
                    width: 200,
                    repeat: false,
                    frameRate: FrameRate(60),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Success",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Your order summited Successfully",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButtons(
                title: 'Home',
                onTap: () {
                  context.go('/');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
