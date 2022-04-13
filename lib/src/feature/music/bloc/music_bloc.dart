import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../logic/online_radio_impl.dart';
import '../logic/online_store_impl.dart';
import '../model/azuracast/azura_api_now_playing.dart';
import '../model/firestore/user_data.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc({
    required final audioPlayer,
    required final onlineRadio,
    required final store,
  })  : _audioPlayer = audioPlayer,
        _onlineRadio = onlineRadio,
        _store = store,
        super(const _Initial()) {
    on<_JoinFlow>(_nowPlaying);
    on<_Likes>(_likes);
    _onlineRadio.nowPlaying().then((value) {
      print(1);
      return _playing = value;
    });
  }
  final AudioPlayer _audioPlayer;
  final OnlineRadioImpl _onlineRadio;
  final OnlineStoreImpl _store;
  late final AzuraApiNowPlaying _playing;

  void _nowPlaying(_JoinFlow event, Emitter<MusicState> emit) {
    Timer? timer;
    emit(const MusicState.loading());
    if (_audioPlayer.playing) {
      _audioPlayer..pause();
      timer?.cancel();
      emit(MusicState.initial());
    } else {
      _audioPlayer
        ..setUrl(_playing.station.listenUrl)
        ..play();
      print(_playing.station.listenUrl);
    }
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _store
          .getDataUsers()
          .then((data) => emit(
              MusicState.loaded(audioPlayer: _audioPlayer, userData: data)))
          .whenComplete(() => null);
    });
  }

  void _likes(_Likes event, Emitter<MusicState> emit) {}
}
