import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_current_song.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_listeners.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_live.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_song_history.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_station.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_station_queue.dart';

part 'azura_api_now_playing.freezed.dart';
part 'azura_api_now_playing.g.dart';

enum cacheFrom { hit, database, station }

@freezed
class AzuraApiNowPlaying with _$AzuraApiNowPlaying {
  @JsonSerializable(explicitToJson: true)
  const factory AzuraApiNowPlaying(
      {required AzuraApiNowPlayingStation station,
      required AzuraApiNowPlayingListeners listeners,
      required AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing')
          required AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next')
          required AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
          required List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online')
          required bool isOnline,
      cacheFrom? cache}) = _AzuraApiNowPlaying;
  factory AzuraApiNowPlaying.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingFromJson(json);
}
