import 'package:flutter/material.dart';
import 'package:lively/src/feature/music/screens/map.dart';

import 'feature/music/screens/burger_menu.dart';
import 'feature/music/screens/home.dart';
import 'feature/music/screens/onboarding/onboarding.dart';

abstract class Routes {
  static Route _myRouteAnimation(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation.drive(
          Tween(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).chain(
            CurveTween(curve: Curves.ease),
          ),
        ),
        child: child,
      ),
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/map':
        return _myRouteAnimation(MapScreen());
      case '/burgerMenu':
        return _myRouteAnimation(const BurgerMenu());
      case '/home':
        return _myRouteAnimation(const Home());
      default:
        return _myRouteAnimation(const OnBoarding());
    }
  }
}
