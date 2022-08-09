import 'dart:async';

import 'package:bloc/bloc.dart';

class SyncServerCubit extends Cubit<int> {
  StreamSubscription<int>? _timerSubscription;
  SyncServerCubit() : super(0);

  Future<void> resetTimer() async {
    await _timerSubscription?.cancel();
    _timerSubscription =
        Stream.periodic(const Duration(milliseconds: 100), (i) => i % 81)
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
