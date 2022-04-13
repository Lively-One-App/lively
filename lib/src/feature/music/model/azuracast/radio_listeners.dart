import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_listeners.freezed.dart';

@freezed
class RadioListeners with _$RadioListeners {
  const factory RadioListeners(
      {required int current,
      required int total,
      required int unique}) = _RadioListeners;
}
