part of 'shared_preferences_cubit.dart';

@freezed
class SharedPreferencesState with _$SharedPreferencesState {
  const factory SharedPreferencesState.initial() = _Initial;
  const factory SharedPreferencesState.loadedOnBoarding() = _LoadedOnBoarding;
}
