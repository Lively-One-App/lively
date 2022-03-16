// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_station_mount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingStationMount _$$_AzuraApiNowPlayingStationMountFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingStationMount(
      path: json['path'] as String,
      isDefault: json['is_default'] as bool,
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
      bitrate: json['bitrate'] as int?,
      format: json['format'] as String?,
      listeners: AzuraApiNowPlayingListeners.fromJson(
          json['listeners'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingStationMountToJson(
        _$_AzuraApiNowPlayingStationMount instance) =>
    <String, dynamic>{
      'path': instance.path,
      'is_default': instance.isDefault,
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'bitrate': instance.bitrate,
      'format': instance.format,
      'listeners': instance.listeners.toJson(),
    };
