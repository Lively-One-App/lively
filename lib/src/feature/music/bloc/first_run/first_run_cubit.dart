import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_run_state.dart';
part 'first_run_cubit.freezed.dart';

class FirstRunCubit extends Cubit<FirstRunState> {
  final SharedPreferences _sharedPreferences;
  FirstRunCubit(SharedPreferences sharedPreferences)
      : _sharedPreferences = sharedPreferences,
        super(const FirstRunState.initial()) {
    _firstRun();
  }

  void _firstRun() async {
    if (await _sharedPreferences.getBool('firstRun') ?? true) {
      _sharedPreferences.setBool('firstRun', false);
      emit(const FirstRunState.onFirstRun());
    } else {
      close();
    }
  }
}
