import 'package:flutter/material.dart';

abstract class MyThemes {
  static const Color backgroundBurgerMenu = Color(0xFFF2F2F7);
  static const Color yellowBackground = Color(0xFFCCF45A);
  static const Color blueBackground = Color(0xFF4DEBCE);
  static const Color pinkBackground = Color(0xFFFFA0B7);
  static const bugerBackgroundColor = Color(0xFFF2F2F7);
  static const backgroundColor = Color(0xFFFFFFFF);

  static const _regular = FontWeight.w400;
  static const _extraBold = FontWeight.w800;

  static const TextTheme burgerTextTheme = TextTheme(
    headline1: const TextStyle(
      letterSpacing: 0.04,
      fontSize: 30,
      fontWeight: _extraBold,
      color: const Color(0xFFF64B4B),
    ),
    subtitle1: const TextStyle(
      color: const Color(0xFF000000),
      fontSize: 26,
      fontWeight: _regular,
    ),
    subtitle2: const TextStyle(
        fontSize: 15,
        fontWeight: _regular,
        letterSpacing: 0.02,
        color: Color(0xFF646464)),
    bodyText1: const TextStyle(
        fontSize: 19,
        fontWeight: _regular,
        color: const Color(0xFF000000),
        letterSpacing: 1),
  );

  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: const Color(0xFFF6464B),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: const Color(0xFF696969), size: 28),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      fontFamily: 'Muller',
      scaffoldBackgroundColor: backgroundColor,
      listTileTheme: ListTileThemeData(
        iconColor: const Color(0xFFD6D6D6),
        tileColor: const Color(0xFFFFFFFF),
        minLeadingWidth: 0.0,
        contentPadding: EdgeInsets.only(left: 28, right: 16),
      ),
      textTheme: _textTheme,
      iconTheme: const IconThemeData(color: const Color(0xFFF64B4B)),
    );
  }

  static const TextTheme _textTheme = TextTheme(
      headline1: const TextStyle(
          fontSize: 38, fontWeight: _extraBold, color: const Color(0xFFF64B4B)),
      subtitle1: const TextStyle(fontSize: 14, fontWeight: _extraBold),
      bodyText1: const TextStyle(
          fontSize: 18, fontWeight: _extraBold, color: const Color(0xFF000000)),
      caption: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: const Color(0xFFFFFFFF)));
}
