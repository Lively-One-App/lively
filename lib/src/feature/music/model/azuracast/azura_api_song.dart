import 'package:freezed_annotation/freezed_annotation.dart';

part 'azura_api_song.freezed.dart';
part 'azura_api_song.g.dart';

@freezed
class AzuraApiSong with _$AzuraApiSong {
  factory AzuraApiSong(
          {required String id,
          required String text,
          required String artist,
          required String title,
          required String album,
          required String genre,
          required String lyrics,
          required String art,
          @JsonKey(name: 'custom_fields') required List<String> customFields}) = _AzuraApiSong;
  factory AzuraApiSong.fromJson(Map<String, dynamic> json) =>
      _$AzuraApiSongFromJson(json);
}
