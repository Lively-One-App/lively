import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'gradient_colors.dart';
import 'burger_text.dart';

abstract class MyThemes {
  static const _accent = const Color(0xFFF64B4B);
  static final Iterable<ThemeExtension<dynamic>>? _extension = [
    GradientColors(
      backgroundLivelyButtonStart: LinearGradient(
        colors: const [
          Color(0xFFFFA0B7),
          Color(0xFF4DEBCE),
          Color(0xFFCCF45A),
        ],
        stops: [0, 0.42, 1],
      ),
      backgroundLivelyButtonEnd: LinearGradient(
        colors: const [
          Color(0xFFCCF45A),
          Color(0xFF4DEBCE),
          Color(0xFFFFA0B7),
        ],
        stops: [0, 0.42, 1],
      ),
      backgroundStart: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: const [
            Color(0x14FB9EB5),
            Color(0x144EEBCE),
            Color(0x14BDE253),
          ]),
      backgroundEnd: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: const [
            Color(0x14BDE253),
            Color(0x144EEBCE),
            Color(0x14FB9EB5),
          ]),
    ),
    BurgerText(
        textTheme: _textTheme.copyWith(
      headline1: const TextStyle(
        letterSpacing: 0.04,
        fontSize: 30,
        fontWeight: _extraBold,
        color: _accent,
      ),
      subtitle1: const TextStyle(
        fontSize: 24,
        fontWeight: _regular,
      ),
      subtitle2: const TextStyle(
          fontSize: 15,
          fontWeight: _regular,
          letterSpacing: 0.02,
          color: Color(0xFF646464)),
      bodyText1:
          const TextStyle(fontSize: 19, fontWeight: _regular, letterSpacing: 1),
    ))
  ];
  static const _appBarTheme = const AppBarTheme(
    systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    iconTheme: _iconTheme,
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
  static const _iconTheme =
      IconThemeData(color: const Color(0xFF696969), size: 28);
  static const _listTileThemeData = const ListTileThemeData(
    iconColor: const Color(0xFFD6D6D6),
    tileColor: const Color(0xFFFFFFFF),
    minLeadingWidth: 0.0,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
  );

  static ThemeData get lightTheme {
    return ThemeData(
      extensions: _extension,
      brightness: Brightness.light,
      colorSchemeSeed: _accent,
      appBarTheme: _appBarTheme,
      backgroundColor: Color(0xFFF2F2F7),
      fontFamily: 'Muller',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      listTileTheme: _listTileThemeData,
      textTheme: _textTheme,
      iconTheme: const IconThemeData(color: _accent),
    );
  }

  static ThemeData get darkTheme {
    const backgroundColor = const Color(0xFF363636);
    return lightTheme.copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: _textTheme.apply(bodyColor: const Color(0xFFC6C6C6)),
        backgroundColor: backgroundColor,
        appBarTheme: _appBarTheme.copyWith(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
          iconTheme: _iconTheme.copyWith(color: Color(0xFFA9A9A9)),
        ),
        listTileTheme: _listTileThemeData.copyWith(tileColor: backgroundColor));
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
    bodyText1: const TextStyle(fontSize: 18, fontWeight: _extraBold),
    caption: const TextStyle(
        fontSize: 24, fontWeight: _extraBold, color: const Color(0xFFFFFFFF)),
  );
}
