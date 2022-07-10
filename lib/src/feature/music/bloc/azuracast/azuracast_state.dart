part of 'azuracast_cubit.dart';

@freezed
class AzuraCastState with _$AzuraCastState {
  const factory AzuraCastState.initial() = _Initial;
  const factory AzuraCastState.error() = _Error;
  const factory AzuraCastState.getAzuraCast(
      AzuraApiNowPlaying azuraApiNowPlaying) = _GetAzuraCast;
}
