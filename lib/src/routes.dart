import 'package:flutter/widgets.dart';

import 'feature/music/screens/burger_menu.dart';
import 'feature/music/screens/home.dart';

abstract class Routes {
  static Map<String, Widget Function(BuildContext)> routing() {
    return {
      '/burgerMenu': (context) => const BurgerMenu(),
      '/home': (context) => const Home(),
    };
  }
}
