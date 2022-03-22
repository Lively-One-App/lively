import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../logic/audio_player_impl.dart';
import '../logic/my_audio_player.dart';
import '../logic/online_radio_impl.dart';
import '../model/azuracast/now_playing.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc(this._onlineRadio, this._myAudioPlayer) : super(const _Initial()) {
    on<_JoinFlow>(_nowPlaying);
    on<_PauseFlow>(_pausePlaying);
  }
  final OnlineRadioImpl _onlineRadio;
  final AudioPlayerImpl _myAudioPlayer;

  void _nowPlaying(_JoinFlow event, Emitter<MusicState> emit) async {
    emit(const MusicState.loading());
    final nowPlaying = await _onlineRadio.nowPlaying();
    await _myAudioPlayer.player.setUrl(nowPlaying.station.listenUrl);
    emit(MusicState.loaded(nowPlaying));
  }

  void _pausePlaying(_PauseFlow event, Emitter<MusicState> emit) async {
    _myAudioPlayer.player.pause();
  }
}
