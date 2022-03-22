import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String id,
    required String text,
    required String artist,
    required String title,
    required String album,
    required String genre,
    required String lyrics,
    required String art,
  }) = _Song;
}
