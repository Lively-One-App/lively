import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../../authenticate/cubit/authentication_cubit.dart';
import '../../model/azuracast/azura_api_now_playing.dart';

part 'music_state.dart';
part 'music_cubit.freezed.dart';

class MusicCubit extends Cubit<MusicState> {
  MusicCubit({
    required final AudioPlayer audioPlayer,
    required final AuthenticationCubit authCubit,
  })  : _audioPlayer = audioPlayer,
        _authCubit = authCubit,
        super(authCubit.state != null ? _Initial() : _Error());

  final AudioPlayer _audioPlayer;
  final AuthenticationCubit _authCubit;
  void play(AzuraApiNowPlaying azuraApiNowPlaying) async {
    if (_audioPlayer.playing) {
      emit(MusicState.beforeStopping());
      await _audioPlayer
        ..stop();
      await Future.delayed(Duration(milliseconds: 500));
      emit(MusicState.initial());
    } else {
      emit(MusicState.beforePlaying());
      await _audioPlayer
        ..setUrl(azuraApiNowPlaying.station.listenUrl);
      await _audioPlayer.play();
      emit(MusicState.loaded(
        audioPlayer: _audioPlayer,
      ));
    }
  }

  @override
  Future<void> close() {
    _authCubit.close();
    _audioPlayer.dispose();
    return super.close();
  }
}
