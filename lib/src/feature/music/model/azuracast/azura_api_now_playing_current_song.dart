import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_song.dart';

part 'azura_api_now_playing_current_song.freezed.dart';
part 'azura_api_now_playing_current_song.g.dart';

@freezed
class AzuraApiNowPlayingCurrentSong with _$AzuraApiNowPlayingCurrentSong {
  @JsonSerializable(explicitToJson: true)
  factory AzuraApiNowPlayingCurrentSong(
      {required int elapsed,
      required int remaining,
      @JsonKey(name: 'sh_id') required int shId,
      @JsonKey(name: 'played_at') required int playedAt,
      required int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') required bool isRequest,
      required AzuraApiSong song}) = _AzuraApiNowPlayingCurrentSong;
  factory AzuraApiNowPlayingCurrentSong.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingCurrentSongFromJson(json);
}
