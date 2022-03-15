import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lively/src/feature/music/model/azuracast/azura_api_now_playing_listeners.dart';

part 'azura_api_now_playing_station_mount.freezed.dart';
part 'azura_api_now_playing_station_mount.g.dart';

@freezed
class AzuraApiNowPlayingStationMount with _$AzuraApiNowPlayingStationMount {
  @JsonSerializable(explicitToJson: true)
  factory AzuraApiNowPlayingStationMount(
          {required String path,
          @JsonKey(name: 'is_default') required bool isDefault,
          required int id,
          required String name,
          required String url,
          int? bitrate,
          String? format,
          required AzuraApiNowPlayingListeners listeners}) =
      _AzuraApiNowPlayingStationMount;

  factory AzuraApiNowPlayingStationMount.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiNowPlayingStationMountFromJson(json);
}
