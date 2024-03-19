import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static void init() {
    const initializationSettingsAndroid = AndroidInitializationSettings('logo');

    const initializationSettingsIOS = DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  static void showNotification() {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      '11', '212',
      channelDescription: 'TEst', //Required for Android 8.0 or after
      importance: Importance.high,
      priority: Priority.high,
    );
    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    flutterLocalNotificationsPlugin.show(
      1,
      'TEstststts',
      'Helllo',
      platformChannelSpecifics,
    );
  }
}
