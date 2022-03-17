import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../logic/online_radio.dart';
import '../model/azuracast/now_playing.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc(this._onlineRadio) : super(const _Initial()) {
    on<_JoinFlow>(_nowPlaying);
  }
  final OnlineRadio _onlineRadio;

  void _nowPlaying(_JoinFlow event, Emitter<MusicState> emit) async {
    emit(const MusicState.loading());
    final nowPlaying = await _onlineRadio.nowPlaying();
    emit(MusicState.loaded(nowPlaying));
  }
}
