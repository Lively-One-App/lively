import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_cubit.freezed.dart';
part 'shared_preferences_state.dart';

class SharedPreferencesCubit extends Cubit<SharedPreferencesState> {
  SharedPreferencesCubit(this._sharedPreferences)
      : super(const SharedPreferencesState.initial()) {
    firstRun();
  }
  final SharedPreferences _sharedPreferences;
  void firstRun() async {
    if (await _sharedPreferences.getBool('Welcome') ?? false) {
      emit(const SharedPreferencesState.initial());
    } else {
      emit(const SharedPreferencesState.loadedOnBoarding());
      _sharedPreferences.setBool('Welcome', true);
    }
  }
}
