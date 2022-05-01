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
mixin _$LikesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityData cityData) getLikes,
    required TResult Function() putLikes,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_PutLikes value) putLikes,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
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
abstract class _$GetLikesCopyWith<$Res> {
  factory _$GetLikesCopyWith(_GetLikes value, $Res Function(_GetLikes) then) =
      __$GetLikesCopyWithImpl<$Res>;
  $Res call({CityData cityData});

  $CityDataCopyWith<$Res> get cityData;
}

/// @nodoc
class __$GetLikesCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$GetLikesCopyWith<$Res> {
  __$GetLikesCopyWithImpl(_GetLikes _value, $Res Function(_GetLikes) _then)
      : super(_value, (v) => _then(v as _GetLikes));

  @override
  _GetLikes get _value => super._value as _GetLikes;

  @override
  $Res call({
    Object? cityData = freezed,
  }) {
    return _then(_GetLikes(
      cityData == freezed
          ? _value.cityData
          : cityData // ignore: cast_nullable_to_non_nullable
              as CityData,
    ));
  }

  @override
  $CityDataCopyWith<$Res> get cityData {
    return $CityDataCopyWith<$Res>(_value.cityData, (value) {
      return _then(_value.copyWith(cityData: value));
    });
  }
}

/// @nodoc

class _$_GetLikes implements _GetLikes {
  const _$_GetLikes(this.cityData);

  @override
  final CityData cityData;

  @override
  String toString() {
    return 'LikesEvent.getLikes(cityData: $cityData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetLikes &&
            const DeepCollectionEquality().equals(other.cityData, cityData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cityData));

  @JsonKey(ignore: true)
  @override
  _$GetLikesCopyWith<_GetLikes> get copyWith =>
      __$GetLikesCopyWithImpl<_GetLikes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityData cityData) getLikes,
    required TResult Function() putLikes,
    required TResult Function() started,
  }) {
    return getLikes(cityData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
  }) {
    return getLikes?.call(cityData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes(cityData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_PutLikes value) putLikes,
    required TResult Function(_Started value) started,
  }) {
    return getLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
  }) {
    return getLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes(this);
    }
    return orElse();
  }
}

abstract class _GetLikes implements LikesEvent {
  const factory _GetLikes(final CityData cityData) = _$_GetLikes;

  CityData get cityData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetLikesCopyWith<_GetLikes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PutLikesCopyWith<$Res> {
  factory _$PutLikesCopyWith(_PutLikes value, $Res Function(_PutLikes) then) =
      __$PutLikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$PutLikesCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$PutLikesCopyWith<$Res> {
  __$PutLikesCopyWithImpl(_PutLikes _value, $Res Function(_PutLikes) _then)
      : super(_value, (v) => _then(v as _PutLikes));

  @override
  _PutLikes get _value => super._value as _PutLikes;
}

/// @nodoc

class _$_PutLikes implements _PutLikes {
  const _$_PutLikes();

  @override
  String toString() {
    return 'LikesEvent.putLikes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PutLikes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityData cityData) getLikes,
    required TResult Function() putLikes,
    required TResult Function() started,
  }) {
    return putLikes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
  }) {
    return putLikes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (putLikes != null) {
      return putLikes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_PutLikes value) putLikes,
    required TResult Function(_Started value) started,
  }) {
    return putLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
  }) {
    return putLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (putLikes != null) {
      return putLikes(this);
    }
    return orElse();
  }
}

abstract class _PutLikes implements LikesEvent {
  const factory _PutLikes() = _$_PutLikes;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LikesEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LikesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityData cityData) getLikes,
    required TResult Function() putLikes,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityData cityData)? getLikes,
    TResult Function()? putLikes,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_PutLikes value) putLikes,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_PutLikes value)? putLikes,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LikesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$LikesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LikesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LikesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({CityData data});

  $CityDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Loaded(
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

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.data});

  @override
  final CityData data;

  @override
  String toString() {
    return 'LikesState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityData data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityData data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LikesState {
  const factory _Loaded({required final CityData data}) = _$_Loaded;

  CityData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
