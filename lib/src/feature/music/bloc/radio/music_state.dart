part of 'music_bloc.dart';

@freezed
class MusicState with _$MusicState {
  const factory MusicState.initial() = _Initial;
  const factory MusicState.error() = _Error;
  const factory MusicState.loading() = _Loading;
  const factory MusicState.loaded({required AudioPlayer audioPlayer}) = _Loaded;
}
