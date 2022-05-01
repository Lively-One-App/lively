// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'music_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MusicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicStateCopyWith<$Res> {
  factory $MusicStateCopyWith(
          MusicState value, $Res Function(MusicState) then) =
      _$MusicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicStateCopyWithImpl<$Res> implements $MusicStateCopyWith<$Res> {
  _$MusicStateCopyWithImpl(this._value, this._then);

  final MusicState _value;
  // ignore: unused_field
  final $Res Function(MusicState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
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
    return 'MusicState.initial()';
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
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MusicState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'MusicState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MusicState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$BeforePlayingCopyWith<$Res> {
  factory _$BeforePlayingCopyWith(
          _BeforePlaying value, $Res Function(_BeforePlaying) then) =
      __$BeforePlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$BeforePlayingCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
    implements _$BeforePlayingCopyWith<$Res> {
  __$BeforePlayingCopyWithImpl(
      _BeforePlaying _value, $Res Function(_BeforePlaying) _then)
      : super(_value, (v) => _then(v as _BeforePlaying));

  @override
  _BeforePlaying get _value => super._value as _BeforePlaying;
}

/// @nodoc

class _$_BeforePlaying implements _BeforePlaying {
  const _$_BeforePlaying();

  @override
  String toString() {
    return 'MusicState.beforePlaying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BeforePlaying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return beforePlaying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return beforePlaying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) {
    return beforePlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) {
    return beforePlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (beforePlaying != null) {
      return beforePlaying(this);
    }
    return orElse();
  }
}

abstract class _BeforePlaying implements MusicState {
  const factory _BeforePlaying() = _$_BeforePlaying;
}

/// @nodoc
abstract class _$BeforeStoppingCopyWith<$Res> {
  factory _$BeforeStoppingCopyWith(
          _BeforeStopping value, $Res Function(_BeforeStopping) then) =
      __$BeforeStoppingCopyWithImpl<$Res>;
}

/// @nodoc
class __$BeforeStoppingCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
    implements _$BeforeStoppingCopyWith<$Res> {
  __$BeforeStoppingCopyWithImpl(
      _BeforeStopping _value, $Res Function(_BeforeStopping) _then)
      : super(_value, (v) => _then(v as _BeforeStopping));

  @override
  _BeforeStopping get _value => super._value as _BeforeStopping;
}

/// @nodoc

class _$_BeforeStopping implements _BeforeStopping {
  const _$_BeforeStopping();

  @override
  String toString() {
    return 'MusicState.beforeStopping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BeforeStopping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return beforeStopping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return beforeStopping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) {
    return beforeStopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) {
    return beforeStopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (beforeStopping != null) {
      return beforeStopping(this);
    }
    return orElse();
  }
}

abstract class _BeforeStopping implements MusicState {
  const factory _BeforeStopping() = _$_BeforeStopping;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({AudioPlayer audioPlayer});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? audioPlayer = freezed,
  }) {
    return _then(_Loaded(
      audioPlayer: audioPlayer == freezed
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AudioPlayer,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.audioPlayer});

  @override
  final AudioPlayer audioPlayer;

  @override
  String toString() {
    return 'MusicState.loaded(audioPlayer: $audioPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.audioPlayer, audioPlayer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(audioPlayer));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() beforePlaying,
    required TResult Function() beforeStopping,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return loaded(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return loaded?.call(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? beforePlaying,
    TResult Function()? beforeStopping,
    TResult Function(AudioPlayer audioPlayer)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audioPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_BeforePlaying value) beforePlaying,
    required TResult Function(_BeforeStopping value) beforeStopping,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_BeforePlaying value)? beforePlaying,
    TResult Function(_BeforeStopping value)? beforeStopping,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MusicState {
  const factory _Loaded({required final AudioPlayer audioPlayer}) = _$_Loaded;

  AudioPlayer get audioPlayer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
