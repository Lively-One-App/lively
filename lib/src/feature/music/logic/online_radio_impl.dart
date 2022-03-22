import '../model/azuracast/now_playing.dart';

abstract class OnlineRadioImpl {
  OnlineRadioImpl({required this.apiUrl});
  final String apiUrl;
  Future<NowPlaying> nowPlaying();
}
