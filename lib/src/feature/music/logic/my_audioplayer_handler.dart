import 'dart:io' show Platform;

import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAudioPlayerHandler extends BaseAudioHandler {
  final _player = AudioPlayer()
    ..setAutomaticallyWaitsToMinimizeStalling(true)
    ..setCanUseNetworkResourcesForLiveStreamingWhilePaused(true);

  late bool _isFirstPlay;
  final SharedPreferences _sharedPreferences;
  Uri? _listenUrl;

  MyAudioPlayerHandler(this._sharedPreferences) {
    _player.playbackEventStream
        .map(_transformEvent)
        .distinct()
        .pipe(playbackState);
    _initFirstPlay();
  }

  void _initFirstPlay() {
    _isFirstPlay = _sharedPreferences.getBool('firstPlay') ?? true;
  }

  bool get isFirstPlay => _isFirstPlay;
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
    try {
      final audioSource = _player.audioSource;
      await _player.stop();
      if (_listenUrl != null && audioSource is UriAudioSource) {
        await setAudioSource(listenUrl: _listenUrl!);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> dispose() async {
    await _player.dispose();
  }

  AudioSource? get audioSource => _player.audioSource;
  Future<void> setAudioSource(
      {bool preload = true,
      int? initialIndex,
      Duration? initialPosition,
      required Uri listenUrl}) async {
    _listenUrl = listenUrl;
    try {
      if (_isFirstPlay) {
        await setFirstPlayAudio();
        _isFirstPlay = false;
        await _sharedPreferences.setBool('firstPlay', _isFirstPlay);
      } else {
        await _player.setAudioSource(
          AudioSource.uri(listenUrl),
          preload: preload,
          initialIndex: initialIndex,
          initialPosition: initialPosition,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> setFirstPlayAudio() async {
    await _player
        .setAudioSource(AudioSource.asset('assets/audio/first_play.mp3'));
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
