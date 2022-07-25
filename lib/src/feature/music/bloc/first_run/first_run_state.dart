part of 'first_run_cubit.dart';

@freezed
class FirstRunState with _$FirstRunState {
  const factory FirstRunState.initial() = _Initial;
  const factory FirstRunState.onFirstRun() = _OnFirstRun;
}
