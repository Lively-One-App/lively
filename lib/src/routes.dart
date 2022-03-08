import 'package:flutter/widgets.dart';
import 'package:lively/src/pages/home_page.dart';

abstract class Routes {
  static String initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routing() {
    return {};
  }
}
