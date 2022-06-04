import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme/burger_text.dart';

abstract class MyThemes {
  static final backGroundButtonGradientBegin = LinearGradient(
    colors: const [
      Color(0xFFFFA0B7),
      Color(0xFF4DEBCE),
      Color(0xFFCCF45A),
    ],
    stops: [0, 0.42, 1],
  );
  static final backGroundButtonGradientEnd = LinearGradient(
    colors: const [
      Color(0xFFCCF45A),
      Color(0xFF4DEBCE),
      Color(0xFFFFA0B7),
    ],
    stops: [0, 0.42, 1],
  );
  static final backGroundGradientBegin = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: const [
        Color(0x14FB9EB5),
        Color(0x144EEBCE),
        Color(0x14BDE253),
      ]);
  static final backGroundGradientEnd = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: const [
        Color(0x14BDE253),
        Color(0x144EEBCE),
        Color(0x14FB9EB5),
      ]);

  static const _accent = const Color(0xFFF64B4B);

  static ThemeData get lightTheme {
    return ThemeData(
      extensions: [
        BurgerText(
            textTheme: _textTheme.copyWith(
          headline1: const TextStyle(
            letterSpacing: 0.04,
            fontSize: 30,
            fontWeight: _extraBold,
            color: _accent,
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
        ))
      ],
      brightness: Brightness.light,
      colorSchemeSeed: const Color(0xFFF6464B),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        iconTheme: IconThemeData(color: const Color(0xFF696969), size: 28),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFF2F2F7),
      fontFamily: 'Muller',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      listTileTheme: const ListTileThemeData(
        iconColor: const Color(0xFFD6D6D6),
        tileColor: const Color(0xFFFFFFFF),
        minLeadingWidth: 0.0,
        contentPadding: EdgeInsets.only(left: 28, right: 16),
      ),
      textTheme: _textTheme,
      iconTheme: const IconThemeData(color: _accent),
    );
  }

  static ThemeData get darkTheme {
    return lightTheme.copyWith(
        scaffoldBackgroundColor: Color(0xFF363636),
        brightness: Brightness.dark);
  }

  static const _regular = FontWeight.w400;
  static const _extraBold = FontWeight.w800;
  static const TextTheme _textTheme = TextTheme(
      headline1: const TextStyle(
        fontSize: 38,
        fontWeight: _extraBold,
        color: _accent,
      ),
      subtitle1: const TextStyle(fontSize: 14, fontWeight: _extraBold),
      bodyText1: const TextStyle(
          fontSize: 18, fontWeight: _extraBold, color: const Color(0xFF000000)),
      caption: const TextStyle(
          fontSize: 24,
          fontWeight: _extraBold,
          color: const Color(0xFFFFFFFF)));
}
