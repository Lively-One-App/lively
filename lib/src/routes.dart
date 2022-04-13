import 'package:flutter/widgets.dart';

import 'feature/music/screens/burger_menu.dart';

abstract class Routes {
  static Map<String, Widget Function(BuildContext)> routing() {
    return {
      '/burgerMenu': (ctx) => BurgerMenu(),
    };
  }
}
