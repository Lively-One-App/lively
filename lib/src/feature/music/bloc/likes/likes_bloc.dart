import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/online_store_impl.dart';
import '../../model/firestore/city_data.dart';
import '../radio/radio_cubit.dart';
import '../sync_server/sync_server.dart';

part 'likes_state.dart';
part 'likes_event.dart';
part 'likes_bloc.freezed.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  final OnlineStoreImpl _store;
  final RadioCubit _musicCubit;
  final SyncServerCubit _syncServerCubit;
  StreamSubscription? _listenerCityData = null;
  late final StreamSubscription<RadioState> _musicCubitStream;

  LikesBloc({
    required final RadioCubit radioCubit,
    required final OnlineStoreImpl store,
    required final SyncServerCubit syncServerCubit,
  })  : _store = store,
        _musicCubit = radioCubit,
        _syncServerCubit = syncServerCubit,
        super(const LikesState.initial()) {
    _musicCubit.stream.listen((state) {
      state.whenOrNull(
          loaded: () =>
              _listenerCityData = _store.getData('Moskow').listen((cityData) {
                syncServerCubit.resetTimer();
                add(LikesEvent.getCityData(data: cityData));
              }),
          initial: () async {
            await _syncServerCubit.closeTimer();
            await _listenerCityData?.cancel();
            add(const LikesEvent.disable());
          });
    });
    on<_GetCityData>((event, emit) => _getCityData(event, emit));
    on<_DisableLikes>((event, emit) => _disableLikes(event, emit));
    on<_WriteLikes>(
      (event, emit) => _writeLike(event, emit),
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _writeLike(_WriteLikes event, Emitter<LikesState> emit) async {
    final likes = await state.whenOrNull(getLikes: (data) => data.likes);
    await Future.delayed(Duration(
        milliseconds:
            likes == 0 ? 8000 : 8000 - await _syncServerCubit.state * 100));
    _store.setData('Moskow');
  }

  FutureOr<void> _getCityData(_GetCityData event, Emitter<LikesState> emit) {
    emit(LikesState.getLikes(data: event.data));
  }

  FutureOr<void> _disableLikes(_DisableLikes event, Emitter<LikesState> emit) {
    emit(const LikesState.initial());
  }

  @override
  Future<void> close() {
    _musicCubit.close();
    _musicCubitStream.cancel();
    _listenerCityData?.cancel();

    return super.close();
  }
}
