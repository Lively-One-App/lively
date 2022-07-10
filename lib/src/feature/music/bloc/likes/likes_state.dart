part of 'likes_cubit.dart';

@freezed
class LikesState with _$LikesState {
  const factory LikesState.initial() = _Initial;
  const factory LikesState.getLikes({required CityData data}) = _GetLikes;
}
