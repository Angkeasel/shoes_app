import 'package:allpay/src/module/notification/controller/controller_notification.dart';
import 'package:allpay/src/widget/custom_card_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final _notiController = Get.put(NotificationController());
  @override
  void initState() {
    _notiController.fetchAllNoticaitons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Obx(
        () => _notiController.getNotificationLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: _notiController.fetchAllNoticaitons,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 20, right: 20)
                      .copyWith(bottom: 30),
                  itemCount: _notiController.listNotification.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    final notification =
                        _notiController.listNotification[index];
                    return CustomNotification(
                      notificationModel: notification,
                    );
                  },
                ),
              ),
      ),
    );
  }
}
