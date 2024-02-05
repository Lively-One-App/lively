import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:lively/src/feature/music/logic/online_store_impl.dart';

part 'run_string_event.dart';
part 'run_string_state.dart';

class RunStringBloc extends Bloc<RunStringEvent, RunStringState> {
  final OnlineStoreImpl _store;
  RunStringBloc(this._store) : super(const RunStringInitial()) {
    // on<RunStringEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    _store.getRunString().listen((event) {
      final runString = (event as List)[0]['runstring'];
      add(RunStringUpdateEvent(runString));
    });

    on<RunStringUpdateEvent>((event, emit) {
      emit(RunStringUpdateState(runString: event.runString));
    });
  }
}
