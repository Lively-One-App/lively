// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_station_remote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingStationRemote _$$_AzuraApiNowPlayingStationRemoteFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingStationRemote(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
      bitrate: json['bitrate'] as int?,
      format: json['format'] as int?,
      listeners: AzuraApiNowPlayingListeners.fromJson(
          json['listeners'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingStationRemoteToJson(
        _$_AzuraApiNowPlayingStationRemote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'bitrate': instance.bitrate,
      'format': instance.format,
      'listeners': instance.listeners.toJson(),
    };
