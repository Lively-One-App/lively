import 'package:lively/src/feature/music/logic/current_song.dart';
import 'package:lively/src/feature/music/logic/radio_listeners.dart';
import 'package:lively/src/feature/music/logic/song.dart';
import 'package:lively/src/feature/music/logic/station.dart';

class NowPlaying {
  NowPlaying(
      {required this.song,
      required this.currentSong,
      required this.station,
      required this.listeners});
  CurrentSong currentSong;
  Song song;
  Station station;
  RadioListeners listeners;
}
