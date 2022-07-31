// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'radio_listeners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RadioListeners {
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get unique => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioListenersCopyWith<RadioListeners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioListenersCopyWith<$Res> {
  factory $RadioListenersCopyWith(
          RadioListeners value, $Res Function(RadioListeners) then) =
      _$RadioListenersCopyWithImpl<$Res>;
  $Res call({int current, int total, int unique});
}

/// @nodoc
class _$RadioListenersCopyWithImpl<$Res>
    implements $RadioListenersCopyWith<$Res> {
  _$RadioListenersCopyWithImpl(this._value, this._then);

  final RadioListeners _value;
  // ignore: unused_field
  final $Res Function(RadioListeners) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? total = freezed,
    Object? unique = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: unique == freezed
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RadioListenersCopyWith<$Res>
    implements $RadioListenersCopyWith<$Res> {
  factory _$$_RadioListenersCopyWith(
          _$_RadioListeners value, $Res Function(_$_RadioListeners) then) =
      __$$_RadioListenersCopyWithImpl<$Res>;
  @override
  $Res call({int current, int total, int unique});
}

/// @nodoc
class __$$_RadioListenersCopyWithImpl<$Res>
    extends _$RadioListenersCopyWithImpl<$Res>
    implements _$$_RadioListenersCopyWith<$Res> {
  __$$_RadioListenersCopyWithImpl(
      _$_RadioListeners _value, $Res Function(_$_RadioListeners) _then)
      : super(_value, (v) => _then(v as _$_RadioListeners));

  @override
  _$_RadioListeners get _value => super._value as _$_RadioListeners;

  @override
  $Res call({
    Object? current = freezed,
    Object? total = freezed,
    Object? unique = freezed,
  }) {
    return _then(_$_RadioListeners(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: unique == freezed
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioListeners implements _RadioListeners {
  const _$_RadioListeners(
      {required this.current, required this.total, required this.unique});

  @override
  final int current;
  @override
  final int total;
  @override
  final int unique;

  @override
  String toString() {
    return 'RadioListeners(current: $current, total: $total, unique: $unique)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioListeners &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.unique, unique));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(unique));

  @JsonKey(ignore: true)
  @override
  _$$_RadioListenersCopyWith<_$_RadioListeners> get copyWith =>
      __$$_RadioListenersCopyWithImpl<_$_RadioListeners>(this, _$identity);
}

abstract class _RadioListeners implements RadioListeners {
  const factory _RadioListeners(
      {required final int current,
      required final int total,
      required final int unique}) = _$_RadioListeners;

  @override
  int get current;
  @override
  int get total;
  @override
  int get unique;
  @override
  @JsonKey(ignore: true)
  _$$_RadioListenersCopyWith<_$_RadioListeners> get copyWith =>
      throw _privateConstructorUsedError;
}
