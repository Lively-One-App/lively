import '../model/azuracast/azura_api_now_playing.dart';

abstract class OnlineRadioImpl {
  Stream<AzuraApiNowPlaying> nowPlayingStream();
  Future<AzuraApiNowPlaying> nowPlaying();
}
