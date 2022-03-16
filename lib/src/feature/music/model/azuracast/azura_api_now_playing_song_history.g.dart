// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_song_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingSongHistory _$$_AzuraApiNowPlayingSongHistoryFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingSongHistory(
      shId: json['sh_id'] as int,
      playedAt: json['played_at'] as int,
      duration: json['duration'] as int,
      playlist: json['playlist'] as String?,
      streamer: json['streamer'] as String?,
      isRequest: json['is_request'] as bool,
      song: AzuraApiSong.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingSongHistoryToJson(
        _$_AzuraApiNowPlayingSongHistory instance) =>
    <String, dynamic>{
      'sh_id': instance.shId,
      'played_at': instance.playedAt,
      'duration': instance.duration,
      'playlist': instance.playlist,
      'streamer': instance.streamer,
      'is_request': instance.isRequest,
      'song': instance.song,
    };
