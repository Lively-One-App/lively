// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RadioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStateCopyWith<$Res> {
  factory $RadioStateCopyWith(
          RadioState value, $Res Function(RadioState) then) =
      _$RadioStateCopyWithImpl<$Res, RadioState>;
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res, $Val extends RadioState>
    implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RadioState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RadioState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BeforePlayingImplCopyWith<$Res> {
  factory _$$BeforePlayingImplCopyWith(
          _$BeforePlayingImpl value, $Res Function(_$BeforePlayingImpl) then) =
      __$$BeforePlayingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BeforePlayingImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$BeforePlayingImpl>
    implements _$$BeforePlayingImplCopyWith<$Res> {
  __$$BeforePlayingImplCopyWithImpl(
      _$BeforePlayingImpl _value, $Res Function(_$BeforePlayingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BeforePlayingImpl implements _BeforePlaying {
  const _$BeforePlayingImpl();

  @override
  String toString() {
    return 'RadioState.beforePlaying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BeforePlayingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return beforePlaying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return beforePlaying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (beforePlaying != null) {
      return beforePlaying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return beforePlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return beforePlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (beforePlaying != null) {
      return beforePlaying(this);
    }
    return orElse();
  }
}

abstract class _BeforePlaying implements RadioState {
  const factory _BeforePlaying() = _$BeforePlayingImpl;
}

/// @nodoc
abstract class _$$BeforeStoppingImplCopyWith<$Res> {
  factory _$$BeforeStoppingImplCopyWith(_$BeforeStoppingImpl value,
          $Res Function(_$BeforeStoppingImpl) then) =
      __$$BeforeStoppingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BeforeStoppingImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$BeforeStoppingImpl>
    implements _$$BeforeStoppingImplCopyWith<$Res> {
  __$$BeforeStoppingImplCopyWithImpl(
      _$BeforeStoppingImpl _value, $Res Function(_$BeforeStoppingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BeforeStoppingImpl implements _BeforeStopping {
  const _$BeforeStoppingImpl();

  @override
  String toString() {
    return 'RadioState.beforeStopping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BeforeStoppingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return beforeStopping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return beforeStopping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (beforeStopping != null) {
      return beforeStopping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return beforeStopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return beforeStopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (beforeStopping != null) {
      return beforeStopping(this);
    }
    return orElse();
  }
}

abstract class _BeforeStopping implements RadioState {
  const factory _BeforeStopping() = _$BeforeStoppingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'RadioState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RadioState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'RadioState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function() loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforePlaying,
    TResult? Function()? beforeStopping,
    TResult? Function()? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BeforePlaying value)? beforePlaying,
    TResult? Function(_BeforeStopping value)? beforeStopping,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RadioState {
  const factory _Error([final String? message]) = _$ErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
