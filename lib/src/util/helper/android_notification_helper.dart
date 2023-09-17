import 'package:allpay/src/config/routers/router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const _notificationIcon = '@mipmap/ic_launcher';

class AndroidNotificationHelper {
  AndroidNotificationHelper._();
  static final instance = AndroidNotificationHelper._();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  ///ID for All Notification (Unique)
  int _id = 0;

  ///Android Notificaion Icon Setup
  final AndroidInitializationSettings _initializationSettingsAndroid =
      const AndroidInitializationSettings(_notificationIcon);

  Future<void> init() async {
    await _requestNotificationPermission();
    await _initLocalNotificationSetting();
    _messaging.getToken().then((value) => print('Firebase Token : $value'));
    _onClickMessageOpenedApp();
    _onListenting();
  }

  Future<void> _initLocalNotificationSetting() async {
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: _initializationSettingsAndroid,
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        String? payload = details.payload;
        debugPrint('Notification 1');
        if (payload != null) {
          router.go(payload);
          // adminRouter.
        }
      },
    );
  }

  ///Listen to firebase notification when app is on foreground
  void _onListenting() {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        debugPrint('Message Data ${message.notification?.title}');

        if (message.notification != null) {
          final title = message.notification?.title;
          final body = message.notification?.body;
          final payload = message.data['payload'];

          await showNotification(title, body, payload: payload);
        }
      },
    );
  }

  Future<NotificationSettings> _requestNotificationPermission() async {
    return await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  ///Show local notification
  Future<void> showNotification(String? title, String? body,
      {String? payload}) async {
    _id++;

    NotificationDetails androidNotificationDetail = const NotificationDetails(
      android: AndroidNotificationDetails(
        'android_notification_plugin',
        'channel_name',
        playSound: true,
        importance: Importance.max,
        priority: Priority.high,

        // icon: '',
        // color: Color(0xff4B250F),
      ),
    );

    await _flutterLocalNotificationsPlugin.show(
      _id,
      title,
      body,
      androidNotificationDetail,
      payload: payload,
    );
  }

  static void _onClickMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen(
      (message) {
        debugPrint('Notification 2');
        String? payload = message.data['payload'];
        if (payload != null) {
          router.go(payload);
        }
      },
    );
  }
}
