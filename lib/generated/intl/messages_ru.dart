// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(lively) =>
      "${Intl.plural(lively, one: 'оживлённый', other: 'оживлённых')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appVersion":
            MessageLookupByLibrary.simpleMessage("Версия приложения 1.0 beta"),
        "changeTheGame":
            MessageLookupByLibrary.simpleMessage("ПОРА МЕНЯТЬ ИГРУ"),
        "contact": MessageLookupByLibrary.simpleMessage("Связаться через сайт"),
        "design":
            MessageLookupByLibrary.simpleMessage("Designed by Emil Lively"),
        "headlineBurgerMenu":
            MessageLookupByLibrary.simpleMessage("МЫ ЖАЖДЕМ РАЗВИВАТЬСЯ!"),
        "inTheStreamOf":
            MessageLookupByLibrary.simpleMessage("В ПОТОКЕ МОСКВЫ"),
        "instagram": MessageLookupByLibrary.simpleMessage("Instagram"),
        "likeNotification":
            MessageLookupByLibrary.simpleMessage("+ 1 ЛАЙК, ОТ ТЕБЯ"),
        "lively": m0,
        "noInternet": MessageLookupByLibrary.simpleMessage(
            "Lively не умеет работать без интернета"),
        "noInternetCheck": MessageLookupByLibrary.simpleMessage("Проверяем.."),
        "noInternetReconnect":
            MessageLookupByLibrary.simpleMessage("Подключитесь и мы продолжим"),
        "onBoardingScreen1_1":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать в Lively"),
        "onBoardingScreen1_2": MessageLookupByLibrary.simpleMessage(
            " в единый музыкальный поток Москвы!"),
        "onBoardingScreen2_1": MessageLookupByLibrary.simpleMessage(
            "Слушайте музыку, оживляйтесь"),
        "onBoardingScreen2_2": MessageLookupByLibrary.simpleMessage(
            " и оживляйте других с помощью простого жеста «два-пальца»."),
        "privacy": MessageLookupByLibrary.simpleMessage("Конфиденциальность"),
        "resetTime": MessageLookupByLibrary.simpleMessage("СЕК"),
        "searchTalent": MessageLookupByLibrary.simpleMessage(
            "Мы ищем таланты и открыты для любого сотрудничества, связывайтесь!"),
        "start": MessageLookupByLibrary.simpleMessage("НАЧАТЬ"),
        "subtitleBurgerMenu": MessageLookupByLibrary.simpleMessage(
            "Умоляем, пишите, как нам стать лучше, прямо в Instagram!"),
        "telegram": MessageLookupByLibrary.simpleMessage("Telegram")
      };
}
