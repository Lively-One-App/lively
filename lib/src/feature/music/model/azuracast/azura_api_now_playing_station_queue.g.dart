// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_station_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingStationQueue _$$_AzuraApiNowPlayingStationQueueFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingStationQueue(
      cuedAt: json['cued_at'] as int,
      playedAt: json['played_at'] as int,
      duration: json['duration'] as int,
      playlist: json['playlist'] as String?,
      isRequest: json['is_request'] as bool,
      song: AzuraApiSong.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingStationQueueToJson(
        _$_AzuraApiNowPlayingStationQueue instance) =>
    <String, dynamic>{
      'cued_at': instance.cuedAt,
      'played_at': instance.playedAt,
      'duration': instance.duration,
      'playlist': instance.playlist,
      'is_request': instance.isRequest,
      'song': instance.song.toJson(),
    };
