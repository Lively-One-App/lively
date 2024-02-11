// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_station_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AzuraApiNowPlayingStationQueueImpl
    _$$AzuraApiNowPlayingStationQueueImplFromJson(Map<String, dynamic> json) =>
        _$AzuraApiNowPlayingStationQueueImpl(
          cuedAt: json['cued_at'] as int,
          playedAt: json['played_at'] as int,
          duration: json['duration'] as int,
          playlist: json['playlist'] as String?,
          isRequest: json['is_request'] as bool,
          song: AzuraApiSong.fromJson(json['song'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AzuraApiNowPlayingStationQueueImplToJson(
        _$AzuraApiNowPlayingStationQueueImpl instance) =>
    <String, dynamic>{
      'cued_at': instance.cuedAt,
      'played_at': instance.playedAt,
      'duration': instance.duration,
      'playlist': instance.playlist,
      'is_request': instance.isRequest,
      'song': instance.song.toJson(),
    };
