import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_stream.freezed.dart';

@freezed
class AudioStream with _$AudioStream {
  const factory AudioStream({
    required String name,
    required String url,
    required bool isDefault,
    required String bitRate,
    required String format,
  }) = _AudioStream;
}
