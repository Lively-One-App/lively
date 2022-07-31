// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) getLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLikes value) initial,
    required TResult Function(_GetLikes value) getLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res> implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  final LikesState _value;
  // ignore: unused_field
  final $Res Function(LikesState) _then;
}

/// @nodoc
abstract class _$$_InitialLikesCopyWith<$Res> {
  factory _$$_InitialLikesCopyWith(
          _$_InitialLikes value, $Res Function(_$_InitialLikes) then) =
      __$$_InitialLikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialLikesCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$$_InitialLikesCopyWith<$Res> {
  __$$_InitialLikesCopyWithImpl(
      _$_InitialLikes _value, $Res Function(_$_InitialLikes) _then)
      : super(_value, (v) => _then(v as _$_InitialLikes));

  @override
  _$_InitialLikes get _value => super._value as _$_InitialLikes;
}

/// @nodoc

class _$_InitialLikes implements _InitialLikes {
  const _$_InitialLikes();

  @override
  String toString() {
    return 'LikesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialLikes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) getLikes,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLikes value) initial,
    required TResult Function(_GetLikes value) getLikes,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLikes implements LikesState {
  const factory _InitialLikes() = _$_InitialLikes;
}

/// @nodoc
abstract class _$$_GetLikesCopyWith<$Res> {
  factory _$$_GetLikesCopyWith(
          _$_GetLikes value, $Res Function(_$_GetLikes) then) =
      __$$_GetLikesCopyWithImpl<$Res>;
  $Res call({CityData data});

  $CityDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetLikesCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$$_GetLikesCopyWith<$Res> {
  __$$_GetLikesCopyWithImpl(
      _$_GetLikes _value, $Res Function(_$_GetLikes) _then)
      : super(_value, (v) => _then(v as _$_GetLikes));

  @override
  _$_GetLikes get _value => super._value as _$_GetLikes;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetLikes(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityData,
    ));
  }

  @override
  $CityDataCopyWith<$Res> get data {
    return $CityDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_GetLikes implements _GetLikes {
  const _$_GetLikes({required this.data});

  @override
  final CityData data;

  @override
  String toString() {
    return 'LikesState.getLikes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLikes &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GetLikesCopyWith<_$_GetLikes> get copyWith =>
      __$$_GetLikesCopyWithImpl<_$_GetLikes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) getLikes,
  }) {
    return getLikes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
  }) {
    return getLikes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? getLikes,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLikes value) initial,
    required TResult Function(_GetLikes value) getLikes,
  }) {
    return getLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
  }) {
    return getLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLikes value)? initial,
    TResult Function(_GetLikes value)? getLikes,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes(this);
    }
    return orElse();
  }
}

abstract class _GetLikes implements LikesState {
  const factory _GetLikes({required final CityData data}) = _$_GetLikes;

  CityData get data;
  @JsonKey(ignore: true)
  _$$_GetLikesCopyWith<_$_GetLikes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesEventCopyWith<$Res> {
  factory $LikesEventCopyWith(
          LikesEvent value, $Res Function(LikesEvent) then) =
      _$LikesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikesEventCopyWithImpl<$Res> implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  final LikesEvent _value;
  // ignore: unused_field
  final $Res Function(LikesEvent) _then;
}

/// @nodoc
abstract class _$$_DisableLikesCopyWith<$Res> {
  factory _$$_DisableLikesCopyWith(
          _$_DisableLikes value, $Res Function(_$_DisableLikes) then) =
      __$$_DisableLikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisableLikesCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$$_DisableLikesCopyWith<$Res> {
  __$$_DisableLikesCopyWithImpl(
      _$_DisableLikes _value, $Res Function(_$_DisableLikes) _then)
      : super(_value, (v) => _then(v as _$_DisableLikes));

  @override
  _$_DisableLikes get _value => super._value as _$_DisableLikes;
}

/// @nodoc

class _$_DisableLikes implements _DisableLikes {
  const _$_DisableLikes();

  @override
  String toString() {
    return 'LikesEvent.disable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisableLikes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
  }) {
    return disable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
  }) {
    return disable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class _DisableLikes implements LikesEvent {
  const factory _DisableLikes() = _$_DisableLikes;
}

/// @nodoc
abstract class _$$_WriteLikesCopyWith<$Res> {
  factory _$$_WriteLikesCopyWith(
          _$_WriteLikes value, $Res Function(_$_WriteLikes) then) =
      __$$_WriteLikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WriteLikesCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$$_WriteLikesCopyWith<$Res> {
  __$$_WriteLikesCopyWithImpl(
      _$_WriteLikes _value, $Res Function(_$_WriteLikes) _then)
      : super(_value, (v) => _then(v as _$_WriteLikes));

  @override
  _$_WriteLikes get _value => super._value as _$_WriteLikes;
}

/// @nodoc

class _$_WriteLikes implements _WriteLikes {
  const _$_WriteLikes();

  @override
  String toString() {
    return 'LikesEvent.writeLike()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WriteLikes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
  }) {
    return writeLike();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
  }) {
    return writeLike?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    required TResult orElse(),
  }) {
    if (writeLike != null) {
      return writeLike();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
  }) {
    return writeLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
  }) {
    return writeLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    required TResult orElse(),
  }) {
    if (writeLike != null) {
      return writeLike(this);
    }
    return orElse();
  }
}

abstract class _WriteLikes implements LikesEvent {
  const factory _WriteLikes() = _$_WriteLikes;
}

/// @nodoc
abstract class _$$_GetCityDataCopyWith<$Res> {
  factory _$$_GetCityDataCopyWith(
          _$_GetCityData value, $Res Function(_$_GetCityData) then) =
      __$$_GetCityDataCopyWithImpl<$Res>;
  $Res call({CityData data});

  $CityDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCityDataCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$$_GetCityDataCopyWith<$Res> {
  __$$_GetCityDataCopyWithImpl(
      _$_GetCityData _value, $Res Function(_$_GetCityData) _then)
      : super(_value, (v) => _then(v as _$_GetCityData));

  @override
  _$_GetCityData get _value => super._value as _$_GetCityData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetCityData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityData,
    ));
  }

  @override
  $CityDataCopyWith<$Res> get data {
    return $CityDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_GetCityData implements _GetCityData {
  const _$_GetCityData({required this.data});

  @override
  final CityData data;

  @override
  String toString() {
    return 'LikesEvent.getCityData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCityData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GetCityDataCopyWith<_$_GetCityData> get copyWith =>
      __$$_GetCityDataCopyWithImpl<_$_GetCityData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
  }) {
    return getCityData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
  }) {
    return getCityData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    required TResult orElse(),
  }) {
    if (getCityData != null) {
      return getCityData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
  }) {
    return getCityData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
  }) {
    return getCityData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    required TResult orElse(),
  }) {
    if (getCityData != null) {
      return getCityData(this);
    }
    return orElse();
  }
}

abstract class _GetCityData implements LikesEvent {
  const factory _GetCityData({required final CityData data}) = _$_GetCityData;

  CityData get data;
  @JsonKey(ignore: true)
  _$$_GetCityDataCopyWith<_$_GetCityData> get copyWith =>
      throw _privateConstructorUsedError;
}
