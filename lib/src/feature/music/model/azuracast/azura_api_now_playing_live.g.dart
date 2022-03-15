// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_live.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingLive _$$_AzuraApiNowPlayingLiveFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingLive(
      isLive: json['is_live'] as bool,
      streamerName: json['streamer_name'] as String,
      broadcastStart: json['broadcast_start'] as int?,
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingLiveToJson(
        _$_AzuraApiNowPlayingLive instance) =>
    <String, dynamic>{
      'is_live': instance.isLive,
      'streamer_name': instance.streamerName,
      'broadcast_start': instance.broadcastStart,
    };
