// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$RadioListenersCopyWithImpl<$Res, RadioListeners>;
  @useResult
  $Res call({int current, int total, int unique});
}

/// @nodoc
class _$RadioListenersCopyWithImpl<$Res, $Val extends RadioListeners>
    implements $RadioListenersCopyWith<$Res> {
  _$RadioListenersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
    Object? unique = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: null == unique
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioListenersImplCopyWith<$Res>
    implements $RadioListenersCopyWith<$Res> {
  factory _$$RadioListenersImplCopyWith(_$RadioListenersImpl value,
          $Res Function(_$RadioListenersImpl) then) =
      __$$RadioListenersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int total, int unique});
}

/// @nodoc
class __$$RadioListenersImplCopyWithImpl<$Res>
    extends _$RadioListenersCopyWithImpl<$Res, _$RadioListenersImpl>
    implements _$$RadioListenersImplCopyWith<$Res> {
  __$$RadioListenersImplCopyWithImpl(
      _$RadioListenersImpl _value, $Res Function(_$RadioListenersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
    Object? unique = null,
  }) {
    return _then(_$RadioListenersImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: null == unique
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RadioListenersImpl implements _RadioListeners {
  const _$RadioListenersImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioListenersImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unique, unique) || other.unique == unique));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current, total, unique);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioListenersImplCopyWith<_$RadioListenersImpl> get copyWith =>
      __$$RadioListenersImplCopyWithImpl<_$RadioListenersImpl>(
          this, _$identity);
}

abstract class _RadioListeners implements RadioListeners {
  const factory _RadioListeners(
      {required final int current,
      required final int total,
      required final int unique}) = _$RadioListenersImpl;

  @override
  int get current;
  @override
  int get total;
  @override
  int get unique;
  @override
  @JsonKey(ignore: true)
  _$$RadioListenersImplCopyWith<_$RadioListenersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
