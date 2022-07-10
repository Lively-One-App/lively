// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$AudioStreamCopyWithImpl<$Res>;
  $Res call(
      {String name, String url, bool isDefault, String bitRate, String format});
}

/// @nodoc
class _$AudioStreamCopyWithImpl<$Res> implements $AudioStreamCopyWith<$Res> {
  _$AudioStreamCopyWithImpl(this._value, this._then);

  final AudioStream _value;
  // ignore: unused_field
  final $Res Function(AudioStream) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? isDefault = freezed,
    Object? bitRate = freezed,
    Object? format = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      bitRate: bitRate == freezed
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioStreamCopyWith<$Res>
    implements $AudioStreamCopyWith<$Res> {
  factory _$$_AudioStreamCopyWith(
          _$_AudioStream value, $Res Function(_$_AudioStream) then) =
      __$$_AudioStreamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String url, bool isDefault, String bitRate, String format});
}

/// @nodoc
class __$$_AudioStreamCopyWithImpl<$Res> extends _$AudioStreamCopyWithImpl<$Res>
    implements _$$_AudioStreamCopyWith<$Res> {
  __$$_AudioStreamCopyWithImpl(
      _$_AudioStream _value, $Res Function(_$_AudioStream) _then)
      : super(_value, (v) => _then(v as _$_AudioStream));

  @override
  _$_AudioStream get _value => super._value as _$_AudioStream;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? isDefault = freezed,
    Object? bitRate = freezed,
    Object? format = freezed,
  }) {
    return _then(_$_AudioStream(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      bitRate: bitRate == freezed
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AudioStream implements _AudioStream {
  const _$_AudioStream(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioStream &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.isDefault, isDefault) &&
            const DeepCollectionEquality().equals(other.bitRate, bitRate) &&
            const DeepCollectionEquality().equals(other.format, format));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(isDefault),
      const DeepCollectionEquality().hash(bitRate),
      const DeepCollectionEquality().hash(format));

  @JsonKey(ignore: true)
  @override
  _$$_AudioStreamCopyWith<_$_AudioStream> get copyWith =>
      __$$_AudioStreamCopyWithImpl<_$_AudioStream>(this, _$identity);
}

abstract class _AudioStream implements AudioStream {
  const factory _AudioStream(
      {required final String name,
      required final String url,
      required final bool isDefault,
      required final String bitRate,
      required final String format}) = _$_AudioStream;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  bool get isDefault => throw _privateConstructorUsedError;
  @override
  String get bitRate => throw _privateConstructorUsedError;
  @override
  String get format => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AudioStreamCopyWith<_$_AudioStream> get copyWith =>
      throw _privateConstructorUsedError;
}
