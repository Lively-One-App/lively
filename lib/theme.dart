import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.red,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Color(0xFF696969), size: 15),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      fontFamily: '',
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF64B4B)),
        subtitle1: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000)),
      ),
      iconTheme: const IconThemeData(color: Color(0xFFF64B4B)),
    );
  }
}
