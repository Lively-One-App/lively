part of 'likes_bloc.dart';

@freezed
class LikesEvent with _$LikesEvent {
  const factory LikesEvent.getLikes(CityData cityData) = _GetLikes;
  const factory LikesEvent.putLikes() = _PutLikes;
  const factory LikesEvent.started() = _Started;
}
