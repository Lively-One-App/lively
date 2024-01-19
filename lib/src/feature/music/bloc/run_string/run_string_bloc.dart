import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lively/src/feature/music/logic/notification_service.dart';
import 'package:meta/meta.dart';
import 'package:lively/src/feature/music/logic/online_store_impl.dart';

part 'run_string_event.dart';
part 'run_string_state.dart';

class RunStringBloc extends Bloc<RunStringEvent, RunStringState> {
  final OnlineStoreImpl _store;
  RunStringBloc(this._store) : super(RunStringInitial()) {
    // on<RunStringEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

    
    _store.getRunString().listen((event) {
      String runString = '';
      int timeView = 0;

      event.forEach((element) {
        runString = element['runstring'];
        timeView = element['timeview'];
        
      });


      if (runString != '') {
        NotificationService.display(runString);
        emit(RunStringUpdateState(runString: runString));
        if (timeView != 0) {
          Timer(Duration(seconds: timeView), () {
            emit(RunStringDefaultState());
          });
        }
      }
    });
  }
}
