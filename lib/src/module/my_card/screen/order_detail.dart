import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Order Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "data",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
