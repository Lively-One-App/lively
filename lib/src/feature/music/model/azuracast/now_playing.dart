import 'current_song.dart';
import 'radio_listeners.dart';
import 'song.dart';
import 'station.dart';

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
