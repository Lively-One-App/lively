import 'package:lively/src/feature/music/logic/song.dart';

class CurrentSong {
  CurrentSong(
      {required this.elapsed,
      required this.remaining,
      required this.shId,
      required this.playedAt,
      required this.duration,
      required this.isRequest,
      required this.song});
  int elapsed;
  int remaining;
  int shId;
  int playedAt;
  int duration;
  String? playlist;
  String? streamer;
  bool isRequest;
  Song song;
}
