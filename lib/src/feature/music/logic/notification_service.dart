import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
final FlutterLocalNotificationsPlugin _notificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Define a top-level function to handle background notifications
Future<void> backgroundNotificationHandler(NotificationResponse response) async {
  print (response);
}

class NotificationService {
  static Future<void> initialize() async {
    // Initialize the plugin for Android settings
    const InitializationSettings initializationSettingsAndroid =
        InitializationSettings(
            iOS: DarwinInitializationSettings(),
            android: AndroidInitializationSettings("@drawable/ic_launcher"));

    // Provide the top-level function to the plugin
    await _notificationsPlugin.initialize(
      initializationSettingsAndroid,
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        // Handle foreground notification responses here
      },
      onDidReceiveBackgroundNotificationResponse: backgroundNotificationHandler, // Correctly provided top-level function
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
