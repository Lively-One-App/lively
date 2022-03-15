// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_current_song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingCurrentSong _$$_AzuraApiNowPlayingCurrentSongFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingCurrentSong(
      elapsed: json['elapsed'] as int,
      remaining: json['remaining'] as int,
      shId: json['sh_id'] as int,
      playedAt: json['played_at'] as int,
      duration: json['duration'] as int,
      playlist: json['playlist'] as String?,
      streamer: json['streamer'] as String?,
      isRequest: json['is_request'] as bool,
      song: AzuraApiSong.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingCurrentSongToJson(
        _$_AzuraApiNowPlayingCurrentSong instance) =>
    <String, dynamic>{
      'elapsed': instance.elapsed,
      'remaining': instance.remaining,
      'sh_id': instance.shId,
      'played_at': instance.playedAt,
      'duration': instance.duration,
      'playlist': instance.playlist,
      'streamer': instance.streamer,
      'is_request': instance.isRequest,
      'song': instance.song.toJson(),
    };
