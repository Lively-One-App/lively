import 'package:flutter/material.dart';

abstract class MyThemes {
  static const Color backgroundBurgerMenu = Color(0xFFF2F2F7);
  static const Color yellowBackground = Color(0xFFCCF45A);
  static const Color blueBackground = Color(0xFF4DEBCE);
  static const Color pinkBackground = Color(0xFFFFA0B7);

  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: const Color(0xFFF6464B),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Color(0xFF696969), size: 28),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      fontFamily: 'Muller',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      listTileTheme: ListTileThemeData(
        iconColor: Color(0xFFD6D6D6),
        tileColor: Color(0xFFFFFFFF),
        minLeadingWidth: 0.0,
        contentPadding: EdgeInsets.only(left: 28, right: 16),
      ),
      textTheme: TextTheme(
        headline1: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF64B4B)),
        headline2: const TextStyle(
            letterSpacing: 4,
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF64B4B)),
        subtitle1: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        subtitle2: const TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
        bodyText1: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000)),
        bodyText2: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000)),
      ),
      iconTheme: const IconThemeData(color: Color(0xFFF64B4B)),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: const Color(0xFFF6464B),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Color(0xFF696969), size: 28),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      fontFamily: '',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      textTheme: TextTheme(
        headline1: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF64B4B)),
        subtitle1: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        bodyText1: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000)),
      ),
      iconTheme: const IconThemeData(color: Color(0xFFF64B4B)),
    );
  }
}
