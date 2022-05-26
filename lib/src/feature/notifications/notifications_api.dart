import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart';
import 'package:timezone/timezone.dart';

class NotificationsAPI {
  static FlutterLocalNotificationsPlugin? _plugin;

  NotificationsAPI._();

  static Future<void> initialize({
    Function()? onSelected,
  }) async {
    initializeTimeZones();
    _plugin = FlutterLocalNotificationsPlugin();

    await _plugin!.initialize(
      InitializationSettings(
        android: AndroidInitializationSettings(
          '@drawable/ic_stat_name',
        ),
        iOS: IOSInitializationSettings(),
      ),
      onSelectNotification: (payload) {
        onSelected?.call();
      },
    );
  }

  static Future<void> cancel(int id) async {
    _plugin!.cancel(id);
  }

  static Future<void> show(
    int id,
    String title,
    String body,
    String channel, {
    Importance importance = Importance.defaultImportance,
  }) async {
    if (_plugin == null) {
      throw Exception('Notifications are not initialized yet');
    }

    await _plugin!.show(
      id,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel,
          channel,
          importance: importance,
        ),
        iOS: IOSNotificationDetails(),
      ),
    );
  }

  static Future<void> showDelayed(
    int id,
    String title,
    String body,
    String channel,
    Duration delay, {
    Importance importance = Importance.defaultImportance,
  }) async {
    if (_plugin == null) {
      throw Exception('Notifications are not initialized yet');
    }

    await _plugin!.zonedSchedule(
      id,
      title,
      body,
      TZDateTime.now(local).add(delay),
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel,
          channel,
          importance: importance,
        ),
        iOS: IOSNotificationDetails(),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }
}
