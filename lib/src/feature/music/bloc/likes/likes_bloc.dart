import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic/fire_function.dart';
import '../../logic/online_store_impl.dart';
import '../../model/firestore/city_data.dart';
import '../radio/music_bloc.dart';

part 'likes_event.dart';
part 'likes_state.dart';
part 'likes_bloc.freezed.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  LikesBloc({
    required final OnlineStoreImpl store,
    required final FireFunction fireFunction,
    required final MusicBloc musicBloc,
  })  : _store = store,
        _musicBloc = musicBloc,
        _fireFunction = fireFunction,
        super(_Initial()) {
    on<LikesEvent>(_like);
    _musicBloc.stream.listen((state) {
      state.whenOrNull(
          loaded: (_) => _store.getData().listen(
                (cityData) => add(LikesEvent.getLikes(cityData)),
              ),
          initial: () => add(LikesEvent.started()));
    });
  }
  final OnlineStoreImpl _store;
  final MusicBloc _musicBloc;
  final FireFunction _fireFunction;

  void _like(LikesEvent event, Emitter<LikesState> emit) {
    event.whenOrNull(
        getLikes: (cityData) => emit(LikesState.loaded(data: cityData)),
        putLikes: () => _fireFunction.writeLike('4fXw4xLwYsS2JaBnoSgL'),
        started: () => emit(LikesState.initial()));
  }
}
