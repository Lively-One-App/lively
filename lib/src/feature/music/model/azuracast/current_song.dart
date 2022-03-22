import 'package:freezed_annotation/freezed_annotation.dart';
import 'song.dart';
part 'current_song.freezed.dart';

@freezed
class CurrentSong with _$CurrentSong {
  const factory CurrentSong(
      {required int elapsed,
      required int remaining,
      required int shId,
      required int playedAt,
      required int duration,
      String? playList,
      String? streamer,
      required bool isRequest,
      required Song song}) = _CurrentSong;
}
