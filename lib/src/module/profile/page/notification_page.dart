import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widget/custom_switch_cart.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/arrowBack.svg")),
        title: Text(
          "Notification",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            CustomSwitchCart(
              title: 'General Notification',
              isSwitched: true,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Sound',
              isSwitched: false,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Vibrate',
              isSwitched: false,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'App Updates',
              isSwitched: true,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Bill Remember',
              isSwitched: false,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Promotion',
              isSwitched: false,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Discount Available',
              isSwitched: true,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'Payment Request',
              isSwitched: true,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'New Service Available',
              isSwitched: false,
              onChanged: (v) {},
            ),
            CustomSwitchCart(
              title: 'New Tips Available',
              isSwitched: false,
              onChanged: (v) {},
            )
          ],
        ),
      ),
    );
  }
}
