import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:l/l.dart';
import 'package:lively/src/feature/music/bloc/azura_api_now_paying/azura_api_now_playing_cubit.dart';
import 'package:lively/src/feature/music/model/azura_model/azura_model.dart';
import 'package:lively/src/feature/music/model/azura_model/song.dart';

import '../../logic/my_audioplayer_handler.dart';
import '../../logic/websocket_auto_reconnect.dart';

part 'radio_cubit.freezed.dart';
part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  final MyAudioPlayerHandler _myAudioHandler;
  final AzuraApiNowPlayingCubit _azuraApiNowPlayingCubit;
  late final StreamSubscription<AzuraApiModel> _listenUrl;
  late final StreamSubscription<Song> _listenMediaItem;
  late final StreamSubscription<AzuraApiModel> _azuraApiNowPlaying;
  late final Stream<AzuraApiModel> _handleErrorAzuracast;
  StreamSubscription<PlaybackState>? _playbackState;
  RadioCubit({
    required AzuraApiNowPlayingCubit azuraApiNowPlayingCubit,
    required MyAudioPlayerHandler myAudioHandler,
    required WebSocketAutoReconnect webSocket,
  })  : _myAudioHandler = myAudioHandler,
        _azuraApiNowPlayingCubit = azuraApiNowPlayingCubit,
        super(const RadioState.initial()) {
    _handleErrorAzuracast = webSocket.stream.distinct().handleError((error) {
      l.e(error);
      emit(const RadioState.error());
    });

    _azuraApiNowPlaying =
        _handleErrorAzuracast.distinct().listen((azuraApiNowPlaying) {
      state.whenOrNull(
        error: (_) {
          emit(const RadioState.initial());
          _myAudioHandler.setAudioSource(
            listenUrl: Uri.parse(azuraApiNowPlaying.station.listenUrl),
          );
        },
      );
      _azuraApiNowPlayingCubit.emit(azuraApiNowPlaying);
    });

    _listenUrl = _handleErrorAzuracast
        .distinct(((previous, next) =>
            previous.station.listenUrl == next.station.listenUrl))
        .listen((azuraApiNowPlaying) {
      _myAudioHandler.setAudioSource(
        listenUrl: Uri.parse(azuraApiNowPlaying.station.listenUrl),
      );
    });

    _listenMediaItem = _handleErrorAzuracast
        .map((event) => event.nowPlaying.song)
        .distinct()
        .listen((song) {
      final mediaItem = MediaItem(
          id: song.id,
          title: song.title,
          album: song.album,
          artist: song.artist,
          artUri: Uri.parse(song.art));
      _myAudioHandler.mediaItem.add(mediaItem);
    });
    _initializeStreamSubscriptions();
  }
  void _initializeStreamSubscriptions() {
    Stream<PlaybackState> stream = _myAudioHandler.playbackState.stream
        // .map<List<dynamic>>((event) => [event.processingState, event.playing])
        .distinct((previous, next) =>
            previous.processingState == next.processingState &&
            previous.playing == next.playing)
        .skip(1);

    // if (!_myAudioHandler.isFirstPlay) {
    //   stream = stream.timeout(
    //     const Duration(seconds: 10),
    //     onTimeout: (sink) {
    //       sink.addError(TimeoutException('No internet'));
    //     },
    //   );
    // }

    _playbackState = stream.listen((event) async {
      if (event.playing &&
          event.processingState == AudioProcessingState.ready &&
          !_myAudioHandler.isFirstPlay) {
        emit(const RadioState.loaded());
      } else if (event.processingState == AudioProcessingState.completed) {
        emit(const RadioState.beforePlaying());
        await _myAudioHandler.setFirstPlay(false);
        await _myAudioHandler.stop();
        playAndStop();
      } else if (!event.playing) {
        emit(const RadioState.initial());
        await _myAudioHandler.setFirstPlay(false);
      }  else {
        emit(const RadioState.beforePlaying());
      }
    }, onError: (e, stackTrace) async {
      if (e is TimeoutException || e is PlatformException) {
        if (await _myAudioHandler.playbackState.value.playing) {
          await _myAudioHandler.stop();
          emit(const RadioState.error());
        }
      } else if (e is PlayerException) {
        l.e('Error code: ${e.code}');
        l.e('Error message: ${e.message}');
        emit(const RadioState.initial());
      } else {
        l.e('An error occurred: $e');
      }
    });
  }

  void playAndStop() async {
    try {
      if (await _myAudioHandler.playbackState.value.playing) {
        emit(const RadioState.beforeStopping());
        await Future.delayed(const Duration(milliseconds: 1000));
        await _myAudioHandler.stop();
      } else {
        emit(const RadioState.beforePlaying());
        await Future.delayed(const Duration(milliseconds: 1500));
        await _myAudioHandler.play();
      }
    } catch (e, stackTrace) {
      l.e('all');
      l.e(e);
      _myAudioHandler.playbackState.addError(e, stackTrace);
    }
  }

  @override
  Future<void> close() {
    _listenUrl.cancel();
    _listenMediaItem.cancel();
    _azuraApiNowPlaying.cancel();
    _myAudioHandler.dispose();
    _playbackState?.cancel();

    return super.close();
  }
}
