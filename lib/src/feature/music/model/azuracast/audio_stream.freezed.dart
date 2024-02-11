// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioStream {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get bitRate => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioStreamCopyWith<AudioStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStreamCopyWith<$Res> {
  factory $AudioStreamCopyWith(
          AudioStream value, $Res Function(AudioStream) then) =
      _$AudioStreamCopyWithImpl<$Res, AudioStream>;
  @useResult
  $Res call(
      {String name, String url, bool isDefault, String bitRate, String format});
}

/// @nodoc
class _$AudioStreamCopyWithImpl<$Res, $Val extends AudioStream>
    implements $AudioStreamCopyWith<$Res> {
  _$AudioStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? isDefault = null,
    Object? bitRate = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioStreamImplCopyWith<$Res>
    implements $AudioStreamCopyWith<$Res> {
  factory _$$AudioStreamImplCopyWith(
          _$AudioStreamImpl value, $Res Function(_$AudioStreamImpl) then) =
      __$$AudioStreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String url, bool isDefault, String bitRate, String format});
}

/// @nodoc
class __$$AudioStreamImplCopyWithImpl<$Res>
    extends _$AudioStreamCopyWithImpl<$Res, _$AudioStreamImpl>
    implements _$$AudioStreamImplCopyWith<$Res> {
  __$$AudioStreamImplCopyWithImpl(
      _$AudioStreamImpl _value, $Res Function(_$AudioStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? isDefault = null,
    Object? bitRate = null,
    Object? format = null,
  }) {
    return _then(_$AudioStreamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AudioStreamImpl implements _AudioStream {
  const _$AudioStreamImpl(
      {required this.name,
      required this.url,
      required this.isDefault,
      required this.bitRate,
      required this.format});

  @override
  final String name;
  @override
  final String url;
  @override
  final bool isDefault;
  @override
  final String bitRate;
  @override
  final String format;

  @override
  String toString() {
    return 'AudioStream(name: $name, url: $url, isDefault: $isDefault, bitRate: $bitRate, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStreamImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, url, isDefault, bitRate, format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStreamImplCopyWith<_$AudioStreamImpl> get copyWith =>
      __$$AudioStreamImplCopyWithImpl<_$AudioStreamImpl>(this, _$identity);
}

abstract class _AudioStream implements AudioStream {
  const factory _AudioStream(
      {required final String name,
      required final String url,
      required final bool isDefault,
      required final String bitRate,
      required final String format}) = _$AudioStreamImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  bool get isDefault;
  @override
  String get bitRate;
  @override
  String get format;
  @override
  @JsonKey(ignore: true)
  _$$AudioStreamImplCopyWith<_$AudioStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
