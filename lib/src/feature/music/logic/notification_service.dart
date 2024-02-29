import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin _notificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationService {
  static void initialize() {
    // Initialization  setting for android
    const InitializationSettings initializationSettingsAndroid =
        InitializationSettings(
            iOS: DarwinInitializationSettings(),
            android: AndroidInitializationSettings("@drawable/ic_launcher"));

    _notificationsPlugin.initialize(
      initializationSettingsAndroid,
      // to handle event when we receive notification
      onDidReceiveNotificationResponse: (details) {
        if (details.input != null) {}
      },
      onDidReceiveBackgroundNotificationResponse: (details) {
        print(details);
      },
    );
  }
  
static Future<void> display(String message) async {
    // To display the notification in device
    try {
      //print(message.notification!.android!.sound);
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      NotificationDetails notificationDetails = const NotificationDetails(
        android: AndroidNotificationDetails(
            "Channel Id",
            "Main Channel",
            groupKey: "gfg",
            color: Colors.green, 
            importance: Importance.max,
            icon: '@mipmap/ic_launcher',
            // sound: RawResourceAndroidNotificationSound(
            //     //message.notification!.android!.sound ?? "gfg"),
            //     'gfg'),
           
            // different sound for 
            // different notification
            playSound: true,
            priority: Priority.high),
      );
      await _notificationsPlugin.show(id, message,
          message, notificationDetails,
          payload: 'message.data[route]');
    } catch ( e) {
      print(e);
    }

}
}