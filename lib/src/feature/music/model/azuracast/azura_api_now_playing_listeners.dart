import 'package:freezed_annotation/freezed_annotation.dart';

part 'azura_api_now_playing_listeners.g.dart';
part 'azura_api_now_playing_listeners.freezed.dart';

@freezed
class AzuraApiNowPlayingListeners with _$AzuraApiNowPlayingListeners {
  factory AzuraApiNowPlayingListeners(
      {required int total,
      required int unique,
      required int current}) = _AzuraApiNowPlayingListeners;
  factory AzuraApiNowPlayingListeners.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingListenersFromJson(json);
}
