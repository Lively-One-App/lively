import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../logic/online_radio_impl.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc({
    required final AudioPlayer audioPlayer,
    required final OnlineRadioImpl onlineRadio,
  })  : _audioPlayer = audioPlayer,
        _onlineRadio = onlineRadio,
        super(const _Initial()) {
    on<_PlayRadio>(_playing);
  }
  final AudioPlayer _audioPlayer;
  final OnlineRadioImpl _onlineRadio;

  void _playing(_PlayRadio event, Emitter<MusicState> emit) async {
    emit(const MusicState.loading());
    if (_audioPlayer.playing) {
      await _audioPlayer
        ..pause();
      emit(MusicState.initial());
    } else {
      final playing = await _onlineRadio.nowPlaying();
      print(playing.station.listenUrl);
      await _audioPlayer
        ..setUrl(playing.station.listenUrl)
        ..play();
      emit(MusicState.loaded(audioPlayer: _audioPlayer));
    }
    ;
  }
}
