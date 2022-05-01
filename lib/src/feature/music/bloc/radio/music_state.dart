part of 'music_cubit.dart';

@freezed
class MusicState with _$MusicState {
  const factory MusicState.initial() = _Initial;
  const factory MusicState.error() = _Error;
  const factory MusicState.beforePlaying() = _BeforePlaying;
  const factory MusicState.beforeStopping() = _BeforeStopping;
  const factory MusicState.loaded({required AudioPlayer audioPlayer}) = _Loaded;
}
