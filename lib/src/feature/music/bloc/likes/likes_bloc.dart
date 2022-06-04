import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/fire_function.dart';
import '../../logic/online_store_impl.dart';
import '../../model/firestore/city_data.dart';
import '../radio/music_cubit.dart';

part 'likes_state.dart';
part 'likes_bloc.freezed.dart';

class LikesCubit extends Cubit<LikesState> {
  LikesCubit({
    required final OnlineStoreImpl store,
    required final FireFunction fireFunction,
    required final MusicCubit musicCubit,
  })  : _store = store,
        _musicCubit = musicCubit,
        _fireFunction = fireFunction,
        super(_Initial()) {
    _musicCubit.stream.listen((state) {
      state.whenOrNull(
        loaded: (_) {
          _listenerCityData = _store.getData().listen(
            (cityData) {
              print(cityData.likes);
              emit(LikesState.getLikes(data: cityData));
            },
          );
        },
        initial: () {
          _listenerCityData.cancel().whenComplete(
                () => emit(LikesState.initial()),
              );
        },
      );
    });
  }
  final OnlineStoreImpl _store;
  final MusicCubit _musicCubit;
  final FireFunction _fireFunction;
  late final StreamSubscription<CityData> _listenerCityData;
  void writeLike() {
    _fireFunction.writeLike('4fXw4xLwYsS2JaBnoSgL');
  }

  @override
  Future<void> close() {
    _musicCubit.close();
    return super.close();
  }
}
