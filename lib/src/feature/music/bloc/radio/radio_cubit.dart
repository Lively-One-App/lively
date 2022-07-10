import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../logic/my_audioplayer_handler.dart';
import '../azuracast/azuracast_cubit.dart';

part 'radio_state.dart';
part 'radio_cubit.freezed.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit({
    required AzuraCastCubit azureCubit,
    required MyAudioPlayerHandler myAudioHandler,
  })  : _myAudioHandler = myAudioHandler,
        _azuraCastCubit = azureCubit,
        super(RadioState.initial()) {
    _listenerUrlAzuraCastCubit = _azuraCastCubit.stream
        .distinct(
      (previous, next) =>
          previous.whenOrNull(
              getAzuraCast: ((azuraApiNowPlaying) =>
                  azuraApiNowPlaying.station.listenUrl)) ==
          next.whenOrNull(
              getAzuraCast: ((azuraApiNowPlaying) =>
                  azuraApiNowPlaying.station.listenUrl)),
    )
        .listen(
      (event) {
        event.whenOrNull(
          getAzuraCast: (azuraApiNowPlaying) {
            _myAudioHandler.setAudioSource(
              AudioSource.uri(Uri.parse(azuraApiNowPlaying.station.listenUrl)),
              preload: false,
              initialPosition: Duration(
                  milliseconds: azuraApiNowPlaying.nowPlaying.duration),
            );
          },
        );
      },
    );
    _listenerMediaItem = _azuraCastCubit.stream
        .distinct(
      (previous, next) =>
          previous.whenOrNull(
              getAzuraCast: ((azuraApiNowPlaying) =>
                  azuraApiNowPlaying.nowPlaying.song)) ==
          next.whenOrNull(
              getAzuraCast: ((azuraApiNowPlaying) =>
                  azuraApiNowPlaying.nowPlaying.song)),
    )
        .listen((state) {
      state.whenOrNull(
        getAzuraCast: (azuraApiNowPlaying) {
          final song = azuraApiNowPlaying.nowPlaying.song;
          final mediaItem = MediaItem(
            id: song.id,
            title: song.title,
            album: song.album,
            artist: song.artist,
            artUri: Uri.parse(song.art),
          );
          _myAudioHandler.mediaItem.add(mediaItem);
        },
      );
    });
    myAudioHandler.playbackState.stream
        .map<List<dynamic>>((event) => [event.processingState, event.playing])
        .distinct(((previous, next) =>
            previous[0] == next[0] && previous[1] == next[1]))
        .skip(1)
        .listen((event) {
      if (event[1] && event[0] == AudioProcessingState.ready) {
        emit(RadioState.loaded());
      } else if (!event[1]) {
        emit(RadioState.initial());
      } else {
        emit(RadioState.beforePlaying());
      }
    });
  }

  final MyAudioPlayerHandler _myAudioHandler;
  final AzuraCastCubit _azuraCastCubit;
  late final StreamSubscription<AzuraCastState> _listenerUrlAzuraCastCubit;
  late final StreamSubscription<AzuraCastState> _listenerMediaItem;

  void playAndStop() async {
    print(4444);
    _azuraCastCubit.state.mapOrNull(
      getAzuraCast: (value) {
        if (_myAudioHandler.playbackState.value.playing) {
          emit(RadioState.beforeStopping());
          Future.delayed(Duration(milliseconds: 500))
              .then((value) => _myAudioHandler.stop());
        } else {
          _myAudioHandler.play();
        }
      },
    );
  }

  @override
  Future<void> close() {
    _listenerUrlAzuraCastCubit.cancel();
    _listenerMediaItem.cancel();
    return super.close();
  }
}
