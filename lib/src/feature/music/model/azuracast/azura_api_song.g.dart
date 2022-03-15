// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azura_api_song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzuraApiSong _$$_AzuraApiSongFromJson(Map<String, dynamic> json) =>
    _$_AzuraApiSong(
      id: json['id'] as String,
      text: json['text'] as String,
      artist: json['artist'] as String,
      title: json['title'] as String,
      album: json['album'] as String,
      genre: json['genre'] as String,
      lyrics: json['lyrics'] as String,
      art: json['art'] as String,
      customFields: (json['custom_fields'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AzuraApiSongToJson(_$_AzuraApiSong instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'artist': instance.artist,
      'title': instance.title,
      'album': instance.album,
      'genre': instance.genre,
      'lyrics': instance.lyrics,
      'art': instance.art,
      'custom_fields': instance.customFields,
    };
