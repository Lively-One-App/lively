part of 'likes_bloc.dart';

@freezed
class LikesState with _$LikesState {
  const factory LikesState.initial() = _InitialLikes;
  const factory LikesState.getLikes({required CityData data}) = _GetLikes;
}
