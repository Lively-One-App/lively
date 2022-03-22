import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';

@freezed
class Station with _$Station {
  const factory Station(
      {required int id,
      required String name,
      required String description,
      required String listenUrl}) = _Station;
}
