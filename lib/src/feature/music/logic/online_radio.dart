import 'package:lively/src/feature/music/logic/now_playing.dart';

abstract class OnlineRadio {
  OnlineRadio({required this.apiUrl});
  final String apiUrl;
  Future<NowPlaying> nowPlaying();
}
