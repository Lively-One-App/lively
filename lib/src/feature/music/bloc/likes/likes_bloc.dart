import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
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
  int? syncLike;

  LikesBloc({
    required final RadioCubit radioCubit,
    required final OnlineStoreImpl store,
  })  : _store = store,
        _musicCubit = radioCubit,
        super(const LikesState.initial()) {
    _musicCubit.stream.listen((state) {
      state.whenOrNull(
          loaded: () =>
              _listenerCityData = _store.getData('Moskow').listen((cityData) {
                syncLike = cityData.likes > 0
                    ? DateTime.now().microsecondsSinceEpoch
                    : null;
                add(LikesEvent.getCityData(data: cityData));
              }),
          initial: () async {
            await _listenerCityData?.cancel();
            add(const LikesEvent.disable());
          });
    });
    on<_GetCityData>(
      (event, emit) => _getCityData(event, emit),
    );
    on<_DisableLikes>((event, emit) => _disableLikes(event, emit));
    on<_WriteLikes>(
      (event, emit) => _writeLike(event, emit),
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _writeLike(_WriteLikes event, Emitter<LikesState> emit) async {
    final duration = syncLike == null
        ? 5100000
        : 5100000 - (DateTime.now().microsecondsSinceEpoch - syncLike!);
    await Future.delayed(Duration(microseconds: duration));
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
