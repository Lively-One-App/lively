import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors_for_gradient.dart';
import 'burger_text.dart';

abstract class MyThemes {
  static const _accent = const Color(0xFFF64B4B);
  static const _accentDark = Color.fromARGB(255, 238, 235, 235);
  static final Iterable<ThemeExtension<dynamic>>? _extension = [
    const ColorsForGradient(
      btnColor1: Color(0xFFFFA0B7),
      btnColor2: Color(0xFF4DEBCE),
      btnColor3: Color(0xFFCCF45A),
      bgColor1: Color(0x29FB9EB5),
      bgColor2: Color(0x294EEBCE),
      bgColor3: Color(0x29BDE253),
    ),
    BurgerText(
        textTheme: _textTheme.copyWith(
      displayLarge: const TextStyle(
        height: 1.3,
        letterSpacing: 1.2,
        fontSize: 30,
        fontWeight: _extraBold,
        color: _accent,
      ),
      titleMedium: const TextStyle(
        height: 1.3,
        fontSize: 22,
        letterSpacing: -1,
        fontWeight: _regular,
      ),
      titleSmall: const TextStyle(
          fontSize: 18,
          fontWeight: _regular,
          letterSpacing: 0.36,
          color: Color(0xFF646464)),
      bodyLarge:
          const TextStyle(fontSize: 19, fontWeight: _regular, letterSpacing: 0),
    )),
  ];
  static const _appBarTheme = const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarHeight: 55,
    iconTheme: _iconTheme,
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
  static const _iconTheme =
      IconThemeData(color: const Color(0xFF696969), size: 28);
  static const _listTileThemeData = ListTileThemeData(
    iconColor: const Color(0xFFD6D6D6),
    tileColor: const Color(0xFFFFFFFF),
    minLeadingWidth: 0.0,
    // minVerticalPadding: 7,
    visualDensity: VisualDensity.compact,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
  );

  static ThemeData get lightTheme {
    //const backgroundColor = const Color(0xFFFFFFFF);
    return ThemeData(
      splashColor: Colors.transparent,
      extensions: _extension,
      //brightness: Brightness.light,
      //colorSchemeSeed: _accent,
      appBarTheme: _appBarTheme,
      fontFamily: 'Muller',
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      listTileTheme: _listTileThemeData.copyWith(
          tileColor: const Color.fromRGBO(255, 255, 255, 1),
          textColor: Colors.black),
      textTheme: _textTheme.copyWith(
          bodyLarge: const TextStyle(
              fontSize: 18,
              letterSpacing: 3.24,
              fontWeight: _extraBold,
              color: Colors.black),
          titleMedium: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              letterSpacing: 1,
              fontWeight: _extraBold)),

      iconTheme: const IconThemeData(color: _accent),

      colorScheme: const ColorScheme(
          background: Color.fromRGBO(236, 235, 235, 1),
          brightness: Brightness.light,
          primary: _accent,
          onPrimary: _accent,
          secondary: _accent,
          onSecondary: _accent,
          error: _accent,
          onError: _accent,
          onBackground: Color.fromRGBO(236, 235, 235, 1),
          surface: _accent,
          onSurface: _accent),
    );
  }

  static ThemeData get darkTheme {
    const backgroundColor = const Color(0xFF363636);

    return ThemeData(
        splashColor: Colors.transparent,
        fontFamily: 'Muller',
        extensions: _extension,
        brightness: Brightness.dark,
        //colorSchemeSeed: _accent,
        //colorSchemeSeed: _accent,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: _textTheme.apply(bodyColor: const Color(0xFFC6C6C6)),
        iconTheme: const IconThemeData(color: _accent),
        appBarTheme: _appBarTheme.copyWith(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: _iconTheme.copyWith(color: const Color(0xFFA9A9A9)),
        ),
        listTileTheme: _listTileThemeData.copyWith(
          tileColor: const Color(0xFF414141),
        ),
        colorScheme: const ColorScheme(
            background: backgroundColor,
            brightness: Brightness.dark,
            primary: _accent,
            onPrimary: _accent,
            secondary: _accent,
            onSecondary: _accent,
            error: _accent,
            onError: _accent,
            onBackground: backgroundColor,
            surface: _accent,
            onSurface: _accent));
  }

  static const _regular = FontWeight.w400;
  static const _extraBold = FontWeight.w800;
  static TextTheme _textTheme = const TextTheme(
      displayLarge: const TextStyle(
        letterSpacing: 0.76,
        fontSize: 38,
        fontWeight: _extraBold,
        color: _accent,
      ),
      titleMedium: const TextStyle(
          fontSize: 15, letterSpacing: 1, fontWeight: _extraBold),
      bodyLarge: const TextStyle(
          fontSize: 18, letterSpacing: 3.24, fontWeight: _extraBold),
          bodySmall: const TextStyle(
      fontSize: 24,
      fontWeight: _extraBold,
      letterSpacing: -0.005,
      color: const Color(0xFFFFFFFF),
    ),
      bodyMedium: const TextStyle(
          fontSize: 19, fontWeight: _extraBold, color: Colors.black));
}
