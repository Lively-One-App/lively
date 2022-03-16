import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_listeners.dart';

part 'azura_api_now_playing_station_remote.freezed.dart';
part 'azura_api_now_playing_station_remote.g.dart';

@freezed
class AzuraApiNowPlayingStationRemote with _$AzuraApiNowPlayingStationRemote {
  @JsonSerializable(explicitToJson: true)
  factory AzuraApiNowPlayingStationRemote(
          {required int id,
          required String name,
          required String url,
          int? bitrate,
          int? format,
          required AzuraApiNowPlayingListeners listeners}) =
      _AzuraApiNowPlayingStationRemote;

  factory AzuraApiNowPlayingStationRemote.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingStationRemoteFromJson(json);
}
