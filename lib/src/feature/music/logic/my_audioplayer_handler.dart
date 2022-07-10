import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class MyAudioPlayerHandler extends BaseAudioHandler {
  final _player = AudioPlayer();
  MyAudioPlayerHandler() {
    _player.playbackEventStream.map(_transformEvent).pipe(playbackState);
    //  playbackState.pipe(playbackState);
    //  _player.playerStateStream.map(_transformPlayerState).pipe(playbackState);
  }
  @override
  Future<void> play() async {
    await _player.play();
  }

  @override
  Future<void> pause() async {
    await _player.pause();
  }

  @override
  Future<void> stop() async {
    await _player.stop();
  }

  Future<Duration?> setAudioSource(
    AudioSource source, {
    bool preload = false,
    int? initialIndex,
    Duration? initialPosition,
  }) {
    return _player.setAudioSource(
      source,
      preload: preload,
      initialIndex: initialIndex,
      initialPosition: initialPosition,
    );
  }

  PlaybackState _transformEvent(PlaybackEvent event) {
    return PlaybackState(
      controls: [
        MediaControl.rewind,
        if (_player.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
        MediaControl.fastForward,
      ],
      systemActions: const {
        MediaAction.seek,
        MediaAction.seekForward,
        MediaAction.seekBackward,
      },
      androidCompactActionIndices: const [0, 1, 3],
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      queueIndex: event.currentIndex,
    );
  }
}
