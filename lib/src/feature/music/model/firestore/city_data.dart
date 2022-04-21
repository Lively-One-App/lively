import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_data.freezed.dart';
part 'city_data.g.dart';

@freezed
class CityData with _$CityData {
  const factory CityData({
    required int likes,
  }) = _CityData;
  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}
