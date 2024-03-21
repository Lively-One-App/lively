// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `{lively,plural, =1{lively heart}=0{lively heart}other{lively hearts}}`
  String lively(int lively) {
    return Intl.plural(
      lively,
      one: 'lively heart',
      zero: 'lively heart',
      other: 'lively hearts',
      name: 'lively',
      desc: '',
      args: [lively],
    );
  }

  /// `IN THE FLOW OF MOSCOW`
  String get inTheStreamOf {
    return Intl.message(
      'IN THE FLOW OF MOSCOW',
      name: 'inTheStreamOf',
      desc: '',
      args: [],
    );
  }

  /// `SEC`
  String get resetTime {
    return Intl.message(
      'SEC',
      name: 'resetTime',
      desc: '',
      args: [],
    );
  }

  /// `CHANGE THE GAME`
  String get changeTheGame {
    return Intl.message(
      'CHANGE THE GAME',
      name: 'changeTheGame',
      desc: '',
      args: [],
    );
  }

  /// `WE STRIVE TO DEVELOP!`
  String get headlineBurgerMenu {
    return Intl.message(
      'WE STRIVE TO DEVELOP!',
      name: 'headlineBurgerMenu',
      desc: '',
      args: [],
    );
  }

  /// `Please write how we can become better, right on Instagram!`
  String get subtitleBurgerMenu {
    return Intl.message(
      'Please write how we can become better, right on Instagram!',
      name: 'subtitleBurgerMenu',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `Telegram Channel`
  String get telegramChannel {
    return Intl.message(
      'Telegram Channel',
      name: 'telegramChannel',
      desc: '',
      args: [],
    );
  }

  /// `Telegram`
  String get telegram {
    return Intl.message(
      'Telegram',
      name: 'telegram',
      desc: '',
      args: [],
    );
  }

  /// `Contact via the website`
  String get contact {
    return Intl.message(
      'Contact via the website',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `We are looking for talent and are open to any cooperation, please contact us!`
  String get searchTalent {
    return Intl.message(
      'We are looking for talent and are open to any cooperation, please contact us!',
      name: 'searchTalent',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Designed by Emil Lively`
  String get design {
    return Intl.message(
      'Designed by Emil Lively',
      name: 'design',
      desc: '',
      args: [],
    );
  }

  /// `App Version 1.0 beta`
  String get appVersion {
    return Intl.message(
      'App Version 1.0 beta',
      name: 'appVersion',
      desc: '',
      args: [],
    );
  }

  /// `+ 1 LIKE, FROM YOU`
  String get likeNotification {
    return Intl.message(
      '+ 1 LIKE, FROM YOU',
      name: 'likeNotification',
      desc: '',
      args: [],
    );
  }

  /// `Lively can't work without the Internet`
  String get noInternet {
    return Intl.message(
      'Lively can`t work without the Internet',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Connect to continue`
  String get noInternetReconnect {
    return Intl.message(
      'Connect to continue',
      name: 'noInternetReconnect',
      desc: '',
      args: [],
    );
  }

  /// `Checking..`
  String get noInternetCheck {
    return Intl.message(
      'Checking..',
      name: 'noInternetCheck',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Lively`
  String get onBoardingScreen1_1 {
    return Intl.message(
      'Welcome to Lively',
      name: 'onBoardingScreen1_1',
      desc: '',
      args: [],
    );
  }

  /// ` in Moscow's united music flow!`
  String get onBoardingScreen1_2 {
    return Intl.message(
      ' in Moscow\'s united music flow!',
      name: 'onBoardingScreen1_2',
      desc: '',
      args: [],
    );
  }

  /// `Our misson`
  String get onBoardingScreen2_1 {
    return Intl.message(
      'Our misson',
      name: 'onBoardingScreen2_1',
      desc: '',
      args: [],
    );
  }

  /// `is to increase people's desire to live on Earth`
  String get onBoardingScreen2_2 {
    return Intl.message(
      ' is to increase people\'s desire to live on Earth.',
      name: 'onBoardingScreen2_2',
      desc: '',
      args: [],
    );
  }

  /// `Listen to the music, become lively`
  String get onBoardingScreen3_1 {
    return Intl.message(
      'Listen to the music, become lively',
      name: 'onBoardingScreen3_1',
      desc: '',
      args: [],
    );
  }

  /// ` and make others lively with a simple two-finger gesture.`
  String get onBoardingScreen3_2 {
    return Intl.message(
      ' and make others lively with a simple «two-finger» gesture.',
      name: 'onBoardingScreen3_2',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get start {
    return Intl.message(
      'BECOME LIVELY',
      name: 'start',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
