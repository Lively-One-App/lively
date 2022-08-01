import 'dart:io' show Platform;

import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class MyAudioPlayerHandler extends BaseAudioHandler {
  final _player = AudioPlayer()..setAutomaticallyWaitsToMinimizeStalling(true);

  MyAudioPlayerHandler() {
    _player.playbackEventStream
        .map(_transformEvent)
        .distinct()
        .pipe(playbackState);
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

  Future<void> dispose() async {
    await _player.dispose();
  }

  AudioSource? get audioSource => _player.audioSource;
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
    final mediaControls = [
      if (Platform.isAndroid)
        const MediaControl(
          androidIcon: 'drawable/empty',
          label: 'Rewind',
          action: MediaAction.rewind,
        ),
      if (_player.playing) MediaControl.pause else MediaControl.play,
      MediaControl.stop,
      if (Platform.isAndroid)
        const MediaControl(
          androidIcon: 'drawable/empty',
          label: 'Fast Forward',
          action: MediaAction.fastForward,
        ),
    ];

    return PlaybackState(
      controls: mediaControls,
      systemActions: const {},
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
