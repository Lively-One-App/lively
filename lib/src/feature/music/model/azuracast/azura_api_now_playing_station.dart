import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_station_mount.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_station_remote.dart';

part 'azura_api_now_playing_station.freezed.dart';
part 'azura_api_now_playing_station.g.dart';

@freezed
class AzuraApiNowPlayingStation with _$AzuraApiNowPlayingStation {
  @JsonSerializable(explicitToJson: true)
  factory AzuraApiNowPlayingStation(
          {required int id,
          required String name,
          required String shortcode,
          required String description,
          required String frontend,
          required String backend,
          @JsonKey(name: 'listen_url') required String listenUrl,
          String? url,
          @JsonKey(name: 'public_player_url') required String publicPlayerUrl,
          @JsonKey(name: 'playlist_pls_url') required String playlistPlsUrl,
          @JsonKey(name: 'playlist_m3u_url') required String playlistM3uUrl,
          @JsonKey(name: 'is_public') required bool isPublic,
          required List<AzuraApiNowPlayingStationMount> mounts,
          required List<AzuraApiNowPlayingStationRemote> remotes}) =
      _AzuraApiNowPlayingStation;

  factory AzuraApiNowPlayingStation.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingStationFromJson(json);
}
