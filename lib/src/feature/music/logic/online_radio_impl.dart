import '../model/azuracast/azura_api_now_playing.dart';

abstract class OnlineRadioImpl {
  Future<AzuraApiNowPlaying> nowPlaying();
}
