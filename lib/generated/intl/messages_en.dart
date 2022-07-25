// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(lively) =>
      "${Intl.plural(lively, zero: 'lively heart', one: 'lively heart', other: 'lively hearts')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appVersion":
            MessageLookupByLibrary.simpleMessage("App Version 1.0 beta"),
        "changeTheGame":
            MessageLookupByLibrary.simpleMessage("CHANGE THE GAME"),
        "contact":
            MessageLookupByLibrary.simpleMessage("Contact via the website"),
        "design":
            MessageLookupByLibrary.simpleMessage("Designed by Emil Lively"),
        "headlineBurgerMenu":
            MessageLookupByLibrary.simpleMessage("WE STRIVE TO DEVELOP!"),
        "inTheStreamOf":
            MessageLookupByLibrary.simpleMessage("IN THE FLOW OF MOSCOW"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "likeNotification":
            MessageLookupByLibrary.simpleMessage("+ 1 LIKE, FROM YOU"),
        "lively": m0,
        "noInternet": MessageLookupByLibrary.simpleMessage(
            "Lively doesn`t know how to work without the Internet"),
        "noInternetCheck": MessageLookupByLibrary.simpleMessage("Checking.."),
        "noInternetReconnect": MessageLookupByLibrary.simpleMessage(
            "Connect and we will continue"),
        "onBoardingScreen1_1":
            MessageLookupByLibrary.simpleMessage("Welcome to Lively"),
        "onBoardingScreen1_2": MessageLookupByLibrary.simpleMessage(
            " in Moscow\'s united music flow!"),
        "onBoardingScreen2_1": MessageLookupByLibrary.simpleMessage(
            "Listen to the music, become lively"),
        "onBoardingScreen2_2": MessageLookupByLibrary.simpleMessage(
            " and make others lively with a simple two-finger gesture."),
        "privacy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "resetTime": MessageLookupByLibrary.simpleMessage("5 SEC"),
        "searchTalent": MessageLookupByLibrary.simpleMessage(
            "We are looking for talent and are open to any cooperation, please contact us!"),
        "start": MessageLookupByLibrary.simpleMessage("START"),
        "subtitleBurgerMenu": MessageLookupByLibrary.simpleMessage(
            "Please write how we can become better, right on Instagram!"),
        "telegram": MessageLookupByLibrary.simpleMessage("Telegram")
      };
}
