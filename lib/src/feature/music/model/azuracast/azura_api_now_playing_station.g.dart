// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_now_playing_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiNowPlayingStation _$$_AzuraApiNowPlayingStationFromJson(
        Map<String, dynamic> json) =>
    _$_AzuraApiNowPlayingStation(
      id: json['id'] as int,
      name: json['name'] as String,
      shortcode: json['shortcode'] as String,
      description: json['description'] as String,
      frontend: json['frontend'] as String,
      backend: json['backend'] as String,
      listenUrl: json['listen_url'] as String,
      url: json['url'] as String?,
      publicPlayerUrl: json['public_player_url'] as String,
      playlistPlsUrl: json['playlist_pls_url'] as String,
      playlistM3uUrl: json['playlist_m3u_url'] as String,
      isPublic: json['is_public'] as bool,
      mounts: (json['mounts'] as List<dynamic>)
          .map((e) => AzuraApiNowPlayingStationMount.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      remotes: (json['remotes'] as List<dynamic>)
          .map((e) => AzuraApiNowPlayingStationRemote.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AzuraApiNowPlayingStationToJson(
        _$_AzuraApiNowPlayingStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortcode': instance.shortcode,
      'description': instance.description,
      'frontend': instance.frontend,
      'backend': instance.backend,
      'listen_url': instance.listenUrl,
      'url': instance.url,
      'public_player_url': instance.publicPlayerUrl,
      'playlist_pls_url': instance.playlistPlsUrl,
      'playlist_m3u_url': instance.playlistM3uUrl,
      'is_public': instance.isPublic,
      'mounts': instance.mounts.map((e) => e.toJson()).toList(),
      'remotes': instance.remotes.map((e) => e.toJson()).toList(),
    };
