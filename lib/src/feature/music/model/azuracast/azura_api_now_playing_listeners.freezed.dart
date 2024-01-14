// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azura_api_now_playing_listeners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingListeners _$AzuraApiNowPlayingListenersFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingListeners.fromJson(json);
}

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
      _$AzuraApiNowPlayingListenersCopyWithImpl<$Res,
          AzuraApiNowPlayingListeners>;
  @useResult
  $Res call({int total, int unique, int current});
}

/// @nodoc
class _$AzuraApiNowPlayingListenersCopyWithImpl<$Res,
        $Val extends AzuraApiNowPlayingListeners>
    implements $AzuraApiNowPlayingListenersCopyWith<$Res> {
  _$AzuraApiNowPlayingListenersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? unique = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: null == unique
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzuraApiNowPlayingListenersImplCopyWith<$Res>
    implements $AzuraApiNowPlayingListenersCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingListenersImplCopyWith(
          _$AzuraApiNowPlayingListenersImpl value,
          $Res Function(_$AzuraApiNowPlayingListenersImpl) then) =
      __$$AzuraApiNowPlayingListenersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int unique, int current});
}

/// @nodoc
class __$$AzuraApiNowPlayingListenersImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingListenersCopyWithImpl<$Res,
        _$AzuraApiNowPlayingListenersImpl>
    implements _$$AzuraApiNowPlayingListenersImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingListenersImplCopyWithImpl(
      _$AzuraApiNowPlayingListenersImpl _value,
      $Res Function(_$AzuraApiNowPlayingListenersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? unique = null,
    Object? current = null,
  }) {
    return _then(_$AzuraApiNowPlayingListenersImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      unique: null == unique
          ? _value.unique
          : unique // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AzuraApiNowPlayingListenersImpl
    implements _AzuraApiNowPlayingListeners {
  _$AzuraApiNowPlayingListenersImpl(
      {required this.total, required this.unique, required this.current});

  factory _$AzuraApiNowPlayingListenersImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AzuraApiNowPlayingListenersImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingListenersImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unique, unique) || other.unique == unique) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, unique, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingListenersImplCopyWith<_$AzuraApiNowPlayingListenersImpl>
      get copyWith => __$$AzuraApiNowPlayingListenersImplCopyWithImpl<
          _$AzuraApiNowPlayingListenersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiNowPlayingListenersImplToJson(
      this,
    );
  }
}

abstract class _AzuraApiNowPlayingListeners
    implements AzuraApiNowPlayingListeners {
  factory _AzuraApiNowPlayingListeners(
      {required final int total,
      required final int unique,
      required final int current}) = _$AzuraApiNowPlayingListenersImpl;

  factory _AzuraApiNowPlayingListeners.fromJson(Map<String, dynamic> json) =
      _$AzuraApiNowPlayingListenersImpl.fromJson;

  @override
  int get total;
  @override
  int get unique;
  @override
  int get current;
  @override
  @JsonKey(ignore: true)
  _$$AzuraApiNowPlayingListenersImplCopyWith<_$AzuraApiNowPlayingListenersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
