import '../model/azuracast/now_playing.dart';

abstract class OnlineRadio {
  OnlineRadio({required this.apiUrl});
  final String apiUrl;
  Future<NowPlaying> nowPlaying();
}
