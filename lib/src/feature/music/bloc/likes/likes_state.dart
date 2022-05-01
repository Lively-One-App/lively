part of 'likes_bloc.dart';

@freezed
class LikesState with _$LikesState {
  const factory LikesState.initial() = _Initial;
  const factory LikesState.loaded({required CityData data}) = _Loaded;
}
