import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../../authenticate/cubit/authentication_cubit.dart';
import '../../model/azuracast/azura_api_now_playing.dart';
import '../azure/azure_cubit.dart';

part 'music_event.dart';
part 'music_state.dart';
part 'music_bloc.freezed.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  MusicBloc({
    required final AudioPlayer audioPlayer,
    required final AuthenticationCubit authCubit,
    required final AzureCubit azureCubit,
  })  : _audioPlayer = audioPlayer,
        _authCubit = authCubit,
        super(authCubit.state != null ? _Initial() : _Error()) {
    _authCubit.stream.listen(
      (event) {
        on<MusicEvent>(_playing);
      },
    );
  }
  final AudioPlayer _audioPlayer;
  final AuthenticationCubit _authCubit;

  void _playing(MusicEvent event, Emitter<MusicState> emit) {
    event.when(
      playRadio: (azuraApiNowPlaying) async {
        emit(MusicState.loading());
        if (_audioPlayer.playing) {
          await _audioPlayer
            ..stop();
          emit(MusicState.initial());
        } else {
          print(azuraApiNowPlaying.station.listenUrl);
          await _audioPlayer
            ..setUrl(azuraApiNowPlaying.station.listenUrl)
            ..play();
          emit(MusicState.loaded(
            audioPlayer: _audioPlayer,
          ));
        }
      },
    );
  }
}
