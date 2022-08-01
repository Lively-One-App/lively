import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/online_store_impl.dart';
import '../../model/firestore/city_data.dart';
import '../radio/radio_cubit.dart';

part 'likes_state.dart';
part 'likes_event.dart';
part 'likes_bloc.freezed.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  final OnlineStoreImpl _store;
  final RadioCubit _musicCubit;
  StreamSubscription? _listenerCityData = null;
  late final StreamSubscription<RadioState> _musicCubitStream;

  LikesBloc({
    required final RadioCubit radioCubit,
    required final OnlineStoreImpl store,
  })  : _store = store,
        _musicCubit = radioCubit,
        super(const LikesState.initial()) {
    _musicCubit.stream.listen((state) {
      state.whenOrNull(
          beforePlaying: () => _listenerCityData = _store
              .getData('Moskow')
              .listen((cityData) => add(LikesEvent.getCityData(data: cityData)))
            ..pause(),
          loaded: () => _listenerCityData?.resume(),
          beforeStopping: () => _listenerCityData?.cancel(),
          initial: () => add(const LikesEvent.disable()));
    });
    on<LikesEvent>(
      (event, emit) {
        event.map(
          writeLike: (event) => _writeLike(event, emit),
          getCityData: (event) => _getCityData(event, emit),
          disable: (event) => _disableLikes(event, emit),
        );
      },
    );
  }

  FutureOr<void> _writeLike(_WriteLikes event, Emitter<LikesState> emit) {
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
