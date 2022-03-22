import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData get lightTheme {
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
        // labelLarge: const TextStyle(
        //   fontSize: 24,
        //   fontWeight: FontWeight.w800,
        //   color: Color(0xFFFFFFFF),
        // ),
        // labelSmall: const TextStyle(
        //   fontSize: 15,
        //   fontWeight: FontWeight.w800,
        //   color: Color(0xFF000000),
        // ),
      ),
      iconTheme: const IconThemeData(color: Color(0xFFF64B4B)),
    );
  }
}
