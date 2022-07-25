part of 'radio_cubit.dart';

@freezed
class RadioState with _$RadioState {
  const factory RadioState.initial() = _Initial;
  const factory RadioState.beforePlaying() = _BeforePlaying;
  const factory RadioState.beforeStopping() = _BeforeStopping;
  const factory RadioState.loaded() = _Loaded;
  const factory RadioState.error([String? message]) = _Error;
}
