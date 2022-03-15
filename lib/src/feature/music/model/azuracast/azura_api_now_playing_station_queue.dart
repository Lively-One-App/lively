import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_song.dart';
part 'azura_api_now_playing_station_queue.g.dart';
part 'azura_api_now_playing_station_queue.freezed.dart';

@freezed
class AzuraApiNowPlayingStationQueue with _$AzuraApiNowPlayingStationQueue {
  @JsonSerializable(explicitToJson: true)
  const factory AzuraApiNowPlayingStationQueue(
      {@JsonKey(name: 'cued_at') required int cuedAt,
      @JsonKey(name: 'played_at') required int playedAt,
      required int duration,
      String? playlist,
      @JsonKey(name: 'is_request') required bool isRequest,
      required AzuraApiSong song}) = _AzuraApiNowPlayingStationQueue;

  factory AzuraApiNowPlayingStationQueue.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingStationQueueFromJson(json);
}
