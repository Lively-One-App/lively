part of 'music_bloc.dart';

@freezed
class MusicEvent with _$MusicEvent {
  const factory MusicEvent.playRadio(AzuraApiNowPlaying azuraApiNowPlaying) =
      _PlayRadio;
}
