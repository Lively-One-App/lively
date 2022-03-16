// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing_listeners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingListeners _$AzuraApiNowPlayingListenersFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingListeners.fromJson(json);
}

/// @nodoc
class _$AzuraApiNowPlayingListenersTearOff {
  const _$AzuraApiNowPlayingListenersTearOff();

  _AzuraApiNowPlayingListeners call(
      {required int total, required int unique, required int current}) {
    return _AzuraApiNowPlayingListeners(
      total: total,
      unique: unique,
      current: current,
    );
  }

  AzuraApiNowPlayingListeners fromJson(Map<String, Object?> json) {
    return AzuraApiNowPlayingListeners.fromJson(json);
  }
}

/// @nodoc
const $AzuraApiNowPlayingListeners = _$AzuraApiNowPlayingListenersTearOff();

/// @nodoc
mixin _$AzuraApiNowPlayingListeners {
  int get total => throw _privateConstructorUsedError;
  int get unique => throw _privateConstructorUsedError;
  int get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingListenersCopyWith<AzuraApiNowPlayingListeners>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingListenersCopyWith<$Res> {
  factory $AzuraApiNowPlayingListenersCopyWith(
          AzuraApiNowPlayingListeners value,
          $Res Function(AzuraApiNowPlayingListeners) then) =
      _$AzuraApiNowPlayingListenersCopyWithImpl<$Res>;
  $Res call({int total, int unique, int current});
}

/// @nodoc
class _$AzuraApiNowPlayingListenersCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingListenersCopyWith<$Res> {
  _$AzuraApiNowPlayingListenersCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingListeners _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingListeners) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? unique = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: unique == freezed
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AzuraApiNowPlayingListenersCopyWith<$Res>
    implements $AzuraApiNowPlayingListenersCopyWith<$Res> {
  factory _$AzuraApiNowPlayingListenersCopyWith(
          _AzuraApiNowPlayingListeners value,
          $Res Function(_AzuraApiNowPlayingListeners) then) =
      __$AzuraApiNowPlayingListenersCopyWithImpl<$Res>;
  @override
  $Res call({int total, int unique, int current});
}

/// @nodoc
class __$AzuraApiNowPlayingListenersCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingListenersCopyWithImpl<$Res>
    implements _$AzuraApiNowPlayingListenersCopyWith<$Res> {
  __$AzuraApiNowPlayingListenersCopyWithImpl(
      _AzuraApiNowPlayingListeners _value,
      $Res Function(_AzuraApiNowPlayingListeners) _then)
      : super(_value, (v) => _then(v as _AzuraApiNowPlayingListeners));

  @override
  _AzuraApiNowPlayingListeners get _value =>
      super._value as _AzuraApiNowPlayingListeners;

  @override
  $Res call({
    Object? total = freezed,
    Object? unique = freezed,
    Object? current = freezed,
  }) {
    return _then(_AzuraApiNowPlayingListeners(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: unique == freezed
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzuraApiNowPlayingListeners implements _AzuraApiNowPlayingListeners {
  _$_AzuraApiNowPlayingListeners(
      {required this.total, required this.unique, required this.current});

  factory _$_AzuraApiNowPlayingListeners.fromJson(Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingListenersFromJson(json);

  @override
  final int total;
  @override
  final int unique;
  @override
  final int current;

  @override
  String toString() {
    return 'AzuraApiNowPlayingListeners(total: $total, unique: $unique, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiNowPlayingListeners &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.unique, unique) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(unique),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiNowPlayingListenersCopyWith<_AzuraApiNowPlayingListeners>
      get copyWith => __$AzuraApiNowPlayingListenersCopyWithImpl<
          _AzuraApiNowPlayingListeners>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingListenersToJson(this);
  }
}

abstract class _AzuraApiNowPlayingListeners
    implements AzuraApiNowPlayingListeners {
  factory _AzuraApiNowPlayingListeners(
      {required int total,
      required int unique,
      required int current}) = _$_AzuraApiNowPlayingListeners;

  factory _AzuraApiNowPlayingListeners.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingListeners.fromJson;

  @override
  int get total;
  @override
  int get unique;
  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiNowPlayingListenersCopyWith<_AzuraApiNowPlayingListeners>
      get copyWith => throw _privateConstructorUsedError;
}
