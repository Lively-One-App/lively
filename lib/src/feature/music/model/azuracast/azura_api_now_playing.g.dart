// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlaying _$$_AzuraApiNowPlayingFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlaying(
      station: AzuraApiNowPlayingStation.fromJson(
          json['station'] as Map<String, dynamic>),
      listeners: AzuraApiNowPlayingListeners.fromJson(
          json['listeners'] as Map<String, dynamic>),
      live:
          AzuraApiNowPlayingLive.fromJson(json['live'] as Map<String, dynamic>),
      nowPlaying: AzuraApiNowPlayingCurrentSong.fromJson(
          json['now_playing'] as Map<String, dynamic>),
      playingNext: AzuraApiNowPlayingStationQueue.fromJson(
          json['playing_next'] as Map<String, dynamic>),
      songHistory: (json['song_history'] as List<dynamic>)
          .map((e) =>
              AzuraApiNowPlayingSongHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOnline: json['is_online'] as bool,
      cache: $enumDecodeNullable(_$cacheFromEnumMap, json['cache']),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingToJson(
        _$_AzuraApiNowPlaying instance) =>
    <String, dynamic>{
      'station': instance.station.toJson(),
      'listeners': instance.listeners.toJson(),
      'live': instance.live.toJson(),
      'now_playing': instance.nowPlaying.toJson(),
      'playing_next': instance.playingNext.toJson(),
      'song_history': instance.songHistory.map((e) => e.toJson()).toList(),
      'is_online': instance.isOnline,
      'cache': _$cacheFromEnumMap[instance.cache],
    };

const _$cacheFromEnumMap = {
  cacheFrom.hit: 'hit',
  cacheFrom.database: 'database',
  cacheFrom.station: 'station',
};
