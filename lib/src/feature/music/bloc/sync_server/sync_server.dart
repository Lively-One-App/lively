import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';


class SyncServerCubit extends Cubit<int> {
  StreamSubscription<int>? _timerSubscription;
  SyncServerCubit() : super(-1);

  Future<void> resetTimer() async {
    const duration = 9;
    await _timerSubscription?.cancel();
    _timerSubscription = Stream.periodic(const Duration(seconds: 1), (i) => i)
        .take(duration)
        .listen((i) {
      emit(i);
    });
  }

  Future<void> closeTimer() async {
    await _timerSubscription?.cancel();
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();

    return super.close();
  }
}
