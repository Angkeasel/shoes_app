import 'dart:async';
import 'dart:io';

import 'package:allpay/src/config/routers/router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

int id = 1;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
final StreamController<ReceivedNotification> didReceiveLocalNotificationStream =
    StreamController<ReceivedNotification>.broadcast();

final StreamController<String?> selectNotificationStream =
    StreamController<String?>.broadcast();

const MethodChannel platform =
    MethodChannel('dexterx.dev/flutter_local_notifications_example');

const String portName = 'notification_send_port';
String? selectedNotificationPayload;
RemoteMessage? selectedNotificationPayloadRemote;

// /// A notification action which triggers a url launch event
// const String urlLaunchActionId = 'id_1';
// // final onMessageOpenApp = OnMessageOpenApp();

// /// A notification action which triggers a App navigation event
// const String navigationActionId = 'id_3';

// /// Defines a iOS/MacOS notification category for text input actions.
// const String darwinNotificationCategoryText = 'textCategory';

// /// Defines a iOS/MacOS notification category for plain actions.
// const String darwinNotificationCategoryPlain = 'plainCategory';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  final payload = notificationResponse.payload;
  if (payload != null) {
    router.go(payload);
  }
}

Future<void> _configureLocalTimeZone() async {
  if (kIsWeb || Platform.isLinux) {
    return;
  }
  // tz.initializeTimeZones();
  // final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  // tz.setLocalLocation(tz.getLocation(timeZoneName));
}

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

class NotificationHelper {
  static Future<void> initial() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint('fcmToken: $fcmToken');
    await _configureLocalTimeZone();
    // final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      // 'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    debugPrint('User granted permission: ${settings.authorizationStatus}');
    if (Platform.isIOS || Platform.isMacOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
            critical: true,
          );

      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
            critical: true,
          );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      // ignore: unused_local_variable
      final bool? granted = await androidImplementation?.requestPermission();
    }
    if (Platform.isAndroid) {
      final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
          FlutterLocalNotificationsPlugin();

      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    }

    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        !kIsWeb && Platform.isLinux
            ? null
            : await flutterLocalNotificationsPlugin
                .getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      selectedNotificationPayload =
          notificationAppLaunchDetails!.notificationResponse?.payload;
    }

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // final List<DarwinNotificationCategory> darwinNotificationCategories =
    //     <DarwinNotificationCategory>[
    //   DarwinNotificationCategory(
    //     darwinNotificationCategoryText,
    //     actions: <DarwinNotificationAction>[
    //       DarwinNotificationAction.text(
    //         'text_1',
    //         'Action 1',
    //         buttonTitle: 'Send',
    //         placeholder: 'Placeholder',
    //       ),
    //     ],
    //   ),
    //   DarwinNotificationCategory(
    //     darwinNotificationCategoryPlain,
    //     actions: <DarwinNotificationAction>[
    //       DarwinNotificationAction.plain('id_1', 'Action 1'),
    //       DarwinNotificationAction.plain(
    //         'id_2',
    //         'Action 2 (destructive)',
    //         options: <DarwinNotificationActionOption>{
    //           DarwinNotificationActionOption.destructive,
    //         },
    //       ),
    //       DarwinNotificationAction.plain(
    //         navigationActionId,
    //         'Action 3 (foreground)',
    //         options: <DarwinNotificationActionOption>{
    //           DarwinNotificationActionOption.foreground,
    //         },
    //       ),
    //       DarwinNotificationAction.plain(
    //         'id_4',
    //         'Action 4 (auth required)',
    //         options: <DarwinNotificationActionOption>{
    //           DarwinNotificationActionOption.authenticationRequired,
    //         },
    //       ),
    //     ],
    //     options: <DarwinNotificationCategoryOption>{
    //       DarwinNotificationCategoryOption.hiddenPreviewShowTitle,
    //     },
    //   )
    // ];

    // final DarwinInitializationSettings initializationSettingsDarwin =
    //     DarwinInitializationSettings(
    //   requestAlertPermission: false,
    //   requestBadgePermission: false,
    //   requestSoundPermission: false,
    //   onDidReceiveLocalNotification:
    //       (int id, String? title, String? body, String? payload) async {
    //     debugPrint(
    //         "HELPER MESSAGE =>on Messaging:${selectedNotificationPayloadRemote!.notification!.title}");
    //     didReceiveLocalNotificationStream.add(
    //       ReceivedNotification(
    //         id: id,
    //         title: title,
    //         body: body,
    //         payload: payload,
    //       ),
    //     );
    //   },
    //   notificationCategories: darwinNotificationCategories,
    // );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      // iOS: initializationSettingsDarwin,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
        final payload = notificationResponse.payload;
        if (payload != null) {
          router.go(payload);
        }
      },
      // onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
    selectNotificationStream.stream.listen((String? payload) async {
      debugPrint('HELPER MESSAGE Clicked: selectNotificationStream $payload');

      if (payload != null) {
        router.go(payload);
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage remoteMessage) {
      selectedNotificationPayloadRemote = remoteMessage;
      debugPrint('HELPER MESSAGE : onMessage ${remoteMessage.data}');
      if (Platform.isAndroid) {
        showNotification(
            title: remoteMessage.notification?.title,
            body: remoteMessage.notification?.body,
            payload: remoteMessage.data['payload']);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage event) {
      debugPrint('HELPER MESSAGE Clicked: ${event.data}');

      final payload = event.data['payload'];
      if (payload != null) {
        router.go(payload);
      }
    });
  }

  static Future<void> showNotification(
      {required String? title, required String? body, String? payload}) async {
    showTextNotification(
      title: title,
      body: body,
      payload: payload,
    );
  }

  static Future<void> showTextNotification({
    required String? title,
    required String? body,
    String? payload,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'android_notification_plugin',
      'android_notification_plugin',
      playSound: true,
      importance: Importance.max,
      priority: Priority.max,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    debugPrint("Pushing local notifications");
    await flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpecifics, payload: payload);
  }
}
