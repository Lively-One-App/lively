import 'package:just_audio/just_audio.dart';

import 'audio_player_impl.dart';

class MyAudioPlayer implements AudioPlayerImpl {
  MyAudioPlayer() : player = AudioPlayer();
  final AudioPlayer player;

  Future<Duration?> setUrl(String url) async {
    return await player.setUrl(url);
  }

  void play() {
    player.play();
  }
}
