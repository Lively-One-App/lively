part of 'likes_bloc.dart';

@freezed
class LikesEvent with _$LikesEvent {
  const factory LikesEvent.disable() = _DisableLikes;
  const factory LikesEvent.writeLike() = _WriteLikes;
  const factory LikesEvent.getCityData({required CityData data}) = _GetCityData;
  const factory LikesEvent.processLikes() = _ProcessLikes;
}
