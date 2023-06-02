import 'package:allpay/src/module/notification/controller/controller_notification.dart';
import 'package:allpay/src/widget/custom_card_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationCon = Get.put(NotificationController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/svg/arrowBack.svg",
            fit: BoxFit.none,
          ),
        ),
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Text(
              "Today",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: notificationCon.notificationList
                  .asMap()
                  .entries
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CustomNotification(
                          notificationModel: e.value,
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
