part of 'music_bloc.dart';

@freezed
class MusicEvent with _$MusicEvent {
  const factory MusicEvent.joinFlow() = _JoinFlow;
  const factory MusicEvent.pauseFlow() = _PauseFlow;
}
