import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_song.dart';
import 'radio_listeners.dart';
import 'song.dart';
import 'station.dart';

part 'now_playing.freezed.dart';

@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying(
      {required Song song,
      required CurrentSong currentSong,
      required Station station,
      required RadioListeners listeners}) = _NowPlaying;
}
