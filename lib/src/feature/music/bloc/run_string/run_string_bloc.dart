// ignore_for_file: invalid_use_of_visible_for_testing_member

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
      String runString = '';
      event.forEach((element) {
        runString = element['runstring'];

        //   if (elemnt['devid'] != allInfoDevice['host']) {
        //     listMarkers
        //         .add({'latitude': elemnt['lat'], 'longitude': elemnt['lng']});
        //   }
      });
      //);

      // event.forEach((element) {
      //      var temp = element.data();

      //      listMarkers.add({
      //        'latitude': temp['position']['latitude'],
      //        'longitude': temp['position']['longitude']
      //      )};

      if (runString != '') {
        emit(RunStringUpdateState(runString: runString));
      }
    });
  }
}
