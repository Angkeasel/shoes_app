import 'package:allpay/src/module/notification/model/notification_model.dart';
import 'package:allpay/src/util/api_base_herper.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  final _apiBaseHelper = ApiBaseHelper();
  final listNotification = <NotificationModel>[].obs;
  final getNotificationLoading = false.obs;
  Future<List<NotificationModel>> fetchAllNoticaitons() async {
    getNotificationLoading(true);
    List<NotificationModel> notifications = [];
    await _apiBaseHelper
        .onNetworkRequesting(
            url: 'notifications', methode: METHODE.get, isAuthorize: true)
        .then(
      (value) {
        value.map((e) {
          notifications.add(
            NotificationModel.fromJson(e),
          );
        }).toList();

        listNotification.assignAll(notifications);

        getNotificationLoading(false);
      },
    ).onError((ErrorModel error, stackTrace) {
      getNotificationLoading(false);
    });
    return notifications;
  }
}
