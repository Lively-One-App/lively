import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/online_store_impl.dart';
import '../../model/firestore/city_data.dart';
import '../radio/radio_cubit.dart';

part 'likes_state.dart';
part 'likes_cubit.freezed.dart';

class LikesCubit extends Cubit<LikesState> {
  final OnlineStoreImpl _store;
  final RadioCubit _musicCubit;
  StreamSubscription? _listenerCityData;
  late final StreamSubscription<RadioState> _musicCubitStream;

  LikesCubit({
    required final RadioCubit musicCubit,
    required final OnlineStoreImpl store,
  })  : _store = store,
        _musicCubit = musicCubit,
        super(const _Initial()) {
    _musicCubitStream = _musicCubit.stream.listen((state) {
      state.whenOrNull(
        loaded: () {
          _listenerCityData = _store.getData('Moskow').listen(
            (cityData) {
              emit(LikesState.getLikes(data: cityData));
            },
          );
        },
        initial: () {
          if (_listenerCityData != null)
            _listenerCityData?.cancel().whenComplete(
                  () => emit(const LikesState.initial()),
                );
        },
      );
    });
  }

  void writeLike() {
    _store.setData('Moskow');
  }

  @override
  Future<void> close() {
    _musicCubit.close();
    _musicCubitStream.cancel();
    _listenerCityData?.cancel();

    return super.close();
  }
}
