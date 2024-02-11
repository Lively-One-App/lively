// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function()? initial,
    TResult? Function(CityData data)? getLikes,
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
    TResult? Function(_InitialLikes value)? initial,
    TResult? Function(_GetLikes value)? getLikes,
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
      _$LikesStateCopyWithImpl<$Res, LikesState>;
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res, $Val extends LikesState>
    implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLikesImplCopyWith<$Res> {
  factory _$$InitialLikesImplCopyWith(
          _$InitialLikesImpl value, $Res Function(_$InitialLikesImpl) then) =
      __$$InitialLikesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLikesImplCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$InitialLikesImpl>
    implements _$$InitialLikesImplCopyWith<$Res> {
  __$$InitialLikesImplCopyWithImpl(
      _$InitialLikesImpl _value, $Res Function(_$InitialLikesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLikesImpl with DiagnosticableTreeMixin implements _InitialLikes {
  const _$InitialLikesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LikesState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLikesImpl);
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
    TResult? Function()? initial,
    TResult? Function(CityData data)? getLikes,
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
    TResult? Function(_InitialLikes value)? initial,
    TResult? Function(_GetLikes value)? getLikes,
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
  const factory _InitialLikes() = _$InitialLikesImpl;
}

/// @nodoc
abstract class _$$GetLikesImplCopyWith<$Res> {
  factory _$$GetLikesImplCopyWith(
          _$GetLikesImpl value, $Res Function(_$GetLikesImpl) then) =
      __$$GetLikesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityData data});

  $CityDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetLikesImplCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$GetLikesImpl>
    implements _$$GetLikesImplCopyWith<$Res> {
  __$$GetLikesImplCopyWithImpl(
      _$GetLikesImpl _value, $Res Function(_$GetLikesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetLikesImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDataCopyWith<$Res> get data {
    return $CityDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetLikesImpl with DiagnosticableTreeMixin implements _GetLikes {
  const _$GetLikesImpl({required this.data});

  @override
  final CityData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesState.getLikes(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LikesState.getLikes'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLikesImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLikesImplCopyWith<_$GetLikesImpl> get copyWith =>
      __$$GetLikesImplCopyWithImpl<_$GetLikesImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(CityData data)? getLikes,
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
    TResult? Function(_InitialLikes value)? initial,
    TResult? Function(_GetLikes value)? getLikes,
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
  const factory _GetLikes({required final CityData data}) = _$GetLikesImpl;

  CityData get data;
  @JsonKey(ignore: true)
  _$$GetLikesImplCopyWith<_$GetLikesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
    required TResult Function() processLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disable,
    TResult? Function()? writeLike,
    TResult? Function(CityData data)? getCityData,
    TResult? Function()? processLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    TResult Function()? processLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
    required TResult Function(_ProcessLikes value) processLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisableLikes value)? disable,
    TResult? Function(_WriteLikes value)? writeLike,
    TResult? Function(_GetCityData value)? getCityData,
    TResult? Function(_ProcessLikes value)? processLikes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    TResult Function(_ProcessLikes value)? processLikes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesEventCopyWith<$Res> {
  factory $LikesEventCopyWith(
          LikesEvent value, $Res Function(LikesEvent) then) =
      _$LikesEventCopyWithImpl<$Res, LikesEvent>;
}

/// @nodoc
class _$LikesEventCopyWithImpl<$Res, $Val extends LikesEvent>
    implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisableLikesImplCopyWith<$Res> {
  factory _$$DisableLikesImplCopyWith(
          _$DisableLikesImpl value, $Res Function(_$DisableLikesImpl) then) =
      __$$DisableLikesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisableLikesImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$DisableLikesImpl>
    implements _$$DisableLikesImplCopyWith<$Res> {
  __$$DisableLikesImplCopyWithImpl(
      _$DisableLikesImpl _value, $Res Function(_$DisableLikesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisableLikesImpl with DiagnosticableTreeMixin implements _DisableLikes {
  const _$DisableLikesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesEvent.disable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LikesEvent.disable'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisableLikesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
    required TResult Function() processLikes,
  }) {
    return disable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disable,
    TResult? Function()? writeLike,
    TResult? Function(CityData data)? getCityData,
    TResult? Function()? processLikes,
  }) {
    return disable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    TResult Function()? processLikes,
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
    required TResult Function(_ProcessLikes value) processLikes,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisableLikes value)? disable,
    TResult? Function(_WriteLikes value)? writeLike,
    TResult? Function(_GetCityData value)? getCityData,
    TResult? Function(_ProcessLikes value)? processLikes,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    TResult Function(_ProcessLikes value)? processLikes,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class _DisableLikes implements LikesEvent {
  const factory _DisableLikes() = _$DisableLikesImpl;
}

/// @nodoc
abstract class _$$WriteLikesImplCopyWith<$Res> {
  factory _$$WriteLikesImplCopyWith(
          _$WriteLikesImpl value, $Res Function(_$WriteLikesImpl) then) =
      __$$WriteLikesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WriteLikesImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$WriteLikesImpl>
    implements _$$WriteLikesImplCopyWith<$Res> {
  __$$WriteLikesImplCopyWithImpl(
      _$WriteLikesImpl _value, $Res Function(_$WriteLikesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WriteLikesImpl with DiagnosticableTreeMixin implements _WriteLikes {
  const _$WriteLikesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesEvent.writeLike()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LikesEvent.writeLike'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WriteLikesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
    required TResult Function() processLikes,
  }) {
    return writeLike();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disable,
    TResult? Function()? writeLike,
    TResult? Function(CityData data)? getCityData,
    TResult? Function()? processLikes,
  }) {
    return writeLike?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    TResult Function()? processLikes,
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
    required TResult Function(_ProcessLikes value) processLikes,
  }) {
    return writeLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisableLikes value)? disable,
    TResult? Function(_WriteLikes value)? writeLike,
    TResult? Function(_GetCityData value)? getCityData,
    TResult? Function(_ProcessLikes value)? processLikes,
  }) {
    return writeLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    TResult Function(_ProcessLikes value)? processLikes,
    required TResult orElse(),
  }) {
    if (writeLike != null) {
      return writeLike(this);
    }
    return orElse();
  }
}

abstract class _WriteLikes implements LikesEvent {
  const factory _WriteLikes() = _$WriteLikesImpl;
}

/// @nodoc
abstract class _$$GetCityDataImplCopyWith<$Res> {
  factory _$$GetCityDataImplCopyWith(
          _$GetCityDataImpl value, $Res Function(_$GetCityDataImpl) then) =
      __$$GetCityDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityData data});

  $CityDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetCityDataImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$GetCityDataImpl>
    implements _$$GetCityDataImplCopyWith<$Res> {
  __$$GetCityDataImplCopyWithImpl(
      _$GetCityDataImpl _value, $Res Function(_$GetCityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetCityDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CityData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDataCopyWith<$Res> get data {
    return $CityDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetCityDataImpl with DiagnosticableTreeMixin implements _GetCityData {
  const _$GetCityDataImpl({required this.data});

  @override
  final CityData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesEvent.getCityData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LikesEvent.getCityData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCityDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCityDataImplCopyWith<_$GetCityDataImpl> get copyWith =>
      __$$GetCityDataImplCopyWithImpl<_$GetCityDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
    required TResult Function() processLikes,
  }) {
    return getCityData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disable,
    TResult? Function()? writeLike,
    TResult? Function(CityData data)? getCityData,
    TResult? Function()? processLikes,
  }) {
    return getCityData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    TResult Function()? processLikes,
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
    required TResult Function(_ProcessLikes value) processLikes,
  }) {
    return getCityData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisableLikes value)? disable,
    TResult? Function(_WriteLikes value)? writeLike,
    TResult? Function(_GetCityData value)? getCityData,
    TResult? Function(_ProcessLikes value)? processLikes,
  }) {
    return getCityData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    TResult Function(_ProcessLikes value)? processLikes,
    required TResult orElse(),
  }) {
    if (getCityData != null) {
      return getCityData(this);
    }
    return orElse();
  }
}

abstract class _GetCityData implements LikesEvent {
  const factory _GetCityData({required final CityData data}) =
      _$GetCityDataImpl;

  CityData get data;
  @JsonKey(ignore: true)
  _$$GetCityDataImplCopyWith<_$GetCityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessLikesImplCopyWith<$Res> {
  factory _$$ProcessLikesImplCopyWith(
          _$ProcessLikesImpl value, $Res Function(_$ProcessLikesImpl) then) =
      __$$ProcessLikesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessLikesImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$ProcessLikesImpl>
    implements _$$ProcessLikesImplCopyWith<$Res> {
  __$$ProcessLikesImplCopyWithImpl(
      _$ProcessLikesImpl _value, $Res Function(_$ProcessLikesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessLikesImpl with DiagnosticableTreeMixin implements _ProcessLikes {
  const _$ProcessLikesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikesEvent.processLikes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LikesEvent.processLikes'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessLikesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disable,
    required TResult Function() writeLike,
    required TResult Function(CityData data) getCityData,
    required TResult Function() processLikes,
  }) {
    return processLikes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disable,
    TResult? Function()? writeLike,
    TResult? Function(CityData data)? getCityData,
    TResult? Function()? processLikes,
  }) {
    return processLikes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disable,
    TResult Function()? writeLike,
    TResult Function(CityData data)? getCityData,
    TResult Function()? processLikes,
    required TResult orElse(),
  }) {
    if (processLikes != null) {
      return processLikes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisableLikes value) disable,
    required TResult Function(_WriteLikes value) writeLike,
    required TResult Function(_GetCityData value) getCityData,
    required TResult Function(_ProcessLikes value) processLikes,
  }) {
    return processLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisableLikes value)? disable,
    TResult? Function(_WriteLikes value)? writeLike,
    TResult? Function(_GetCityData value)? getCityData,
    TResult? Function(_ProcessLikes value)? processLikes,
  }) {
    return processLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisableLikes value)? disable,
    TResult Function(_WriteLikes value)? writeLike,
    TResult Function(_GetCityData value)? getCityData,
    TResult Function(_ProcessLikes value)? processLikes,
    required TResult orElse(),
  }) {
    if (processLikes != null) {
      return processLikes(this);
    }
    return orElse();
  }
}

abstract class _ProcessLikes implements LikesEvent {
  const factory _ProcessLikes() = _$ProcessLikesImpl;
}
