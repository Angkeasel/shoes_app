import 'package:get/get_state_manager/get_state_manager.dart';

class NotificationController extends GetxController {
  List<NotificationModel> notificationList = [
    NotificationModel(
      svg: "assets/svg/Group 427322829 (1).svg",
      text: "You get \$5 cashback from payment",
      title: "You Get Cashback!",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (2).svg",
      text: "You get \$5 cashback from payment",
      title: "New Service is Available!",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (3).svg",
      text: "You get \$5 cashback from payment",
      title: "Netflix Supscription Bill",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829.svg",
      text: "You get \$5 cashback from payment",
      title: "Verification Successful",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (1).svg",
      text: "You get \$5 cashback from payment",
      title: "E_Wallet is Connected!",
    ),
  ];

  List<NotificationModel> ydtNotificationList = [
    NotificationModel(
      svg: "assets/svg/Group 427322829 (1).svg",
      text: "You get \$5 cashback from payment",
      title: "You Get Cashback!",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (2).svg",
      text: "You get \$5 cashback from payment",
      title: "New Service is Available!",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (3).svg",
      text: "You get \$5 cashback from payment",
      title: "Netflix Supscription Bill",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829.svg",
      text: "You get \$5 cashback from payment",
      title: "Verification Successful",
    ),
    NotificationModel(
      svg: "assets/svg/Group 427322829 (1).svg",
      text: "You get \$5 cashback from payment",
      title: "E_Wallet is Connected!",
    ),
  ];
}

///
///
class NotificationModel {
  String? svg;
  String? text;
  String? title;
  NotificationModel({
    this.svg,
    this.text,
    this.title,
  });
}
