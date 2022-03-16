import 'package:freezed_annotation/freezed_annotation.dart';

part 'azura_api_now_playing_live.freezed.dart';
part 'azura_api_now_playing_live.g.dart';

@freezed
class AzuraApiNowPlayingLive with _$AzuraApiNowPlayingLive {
  factory AzuraApiNowPlayingLive({
    @JsonKey(name: 'is_live') required bool isLive,
    @JsonKey(name: 'streamer_name') required String streamerName,
    @JsonKey(name: 'broadcast_start') int? broadcastStart,
  }) = _AzuraApiNowPlayingLive;

  factory AzuraApiNowPlayingLive.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingLiveFromJson(json);
}
