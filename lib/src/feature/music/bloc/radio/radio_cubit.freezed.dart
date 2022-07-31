// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
      _$RadioStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res> implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  final RadioState _value;
  // ignore: unused_field
  final $Res Function(RadioState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$RadioStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RadioState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_BeforePlayingCopyWith<$Res> {
  factory _$$_BeforePlayingCopyWith(
          _$_BeforePlaying value, $Res Function(_$_BeforePlaying) then) =
      __$$_BeforePlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BeforePlayingCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res>
    implements _$$_BeforePlayingCopyWith<$Res> {
  __$$_BeforePlayingCopyWithImpl(
      _$_BeforePlaying _value, $Res Function(_$_BeforePlaying) _then)
      : super(_value, (v) => _then(v as _$_BeforePlaying));

  @override
  _$_BeforePlaying get _value => super._value as _$_BeforePlaying;
}

/// @nodoc

class _$_BeforePlaying implements _BeforePlaying {
  const _$_BeforePlaying();

  @override
  String toString() {
    return 'RadioState.beforePlaying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BeforePlaying);
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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
  const factory _BeforePlaying() = _$_BeforePlaying;
}

/// @nodoc
abstract class _$$_BeforeStoppingCopyWith<$Res> {
  factory _$$_BeforeStoppingCopyWith(
          _$_BeforeStopping value, $Res Function(_$_BeforeStopping) then) =
      __$$_BeforeStoppingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BeforeStoppingCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res>
    implements _$$_BeforeStoppingCopyWith<$Res> {
  __$$_BeforeStoppingCopyWithImpl(
      _$_BeforeStopping _value, $Res Function(_$_BeforeStopping) _then)
      : super(_value, (v) => _then(v as _$_BeforeStopping));

  @override
  _$_BeforeStopping get _value => super._value as _$_BeforeStopping;
}

/// @nodoc

class _$_BeforeStopping implements _BeforeStopping {
  const _$_BeforeStopping();

  @override
  String toString() {
    return 'RadioState.beforeStopping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BeforeStopping);
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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
  const factory _BeforeStopping() = _$_BeforeStopping;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$RadioStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'RadioState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$RadioStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'RadioState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function()? loaded,
    TResult Function(String? message)? error,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
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
  const factory _Error([final String? message]) = _$_Error;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
