// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'music_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MusicEventTearOff {
  const _$MusicEventTearOff();

  _PlayRadio playRadio(AzuraApiNowPlaying azuraApiNowPlaying) {
    return _PlayRadio(
      azuraApiNowPlaying,
    );
  }
}

/// @nodoc
const $MusicEvent = _$MusicEventTearOff();

/// @nodoc
mixin _$MusicEvent {
  AzuraApiNowPlaying get azuraApiNowPlaying =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AzuraApiNowPlaying azuraApiNowPlaying) playRadio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AzuraApiNowPlaying azuraApiNowPlaying)? playRadio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzuraApiNowPlaying azuraApiNowPlaying)? playRadio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayRadio value) playRadio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayRadio value)? playRadio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayRadio value)? playRadio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicEventCopyWith<MusicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicEventCopyWith<$Res> {
  factory $MusicEventCopyWith(
          MusicEvent value, $Res Function(MusicEvent) then) =
      _$MusicEventCopyWithImpl<$Res>;
  $Res call({AzuraApiNowPlaying azuraApiNowPlaying});

  $AzuraApiNowPlayingCopyWith<$Res> get azuraApiNowPlaying;
}

/// @nodoc
class _$MusicEventCopyWithImpl<$Res> implements $MusicEventCopyWith<$Res> {
  _$MusicEventCopyWithImpl(this._value, this._then);

  final MusicEvent _value;
  // ignore: unused_field
  final $Res Function(MusicEvent) _then;

  @override
  $Res call({
    Object? azuraApiNowPlaying = freezed,
  }) {
    return _then(_value.copyWith(
      azuraApiNowPlaying: azuraApiNowPlaying == freezed
          ? _value.azuraApiNowPlaying
          : azuraApiNowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlaying,
    ));
  }

  @override
  $AzuraApiNowPlayingCopyWith<$Res> get azuraApiNowPlaying {
    return $AzuraApiNowPlayingCopyWith<$Res>(_value.azuraApiNowPlaying,
        (value) {
      return _then(_value.copyWith(azuraApiNowPlaying: value));
    });
  }
}

/// @nodoc
abstract class _$PlayRadioCopyWith<$Res> implements $MusicEventCopyWith<$Res> {
  factory _$PlayRadioCopyWith(
          _PlayRadio value, $Res Function(_PlayRadio) then) =
      __$PlayRadioCopyWithImpl<$Res>;
  @override
  $Res call({AzuraApiNowPlaying azuraApiNowPlaying});

  @override
  $AzuraApiNowPlayingCopyWith<$Res> get azuraApiNowPlaying;
}

/// @nodoc
class __$PlayRadioCopyWithImpl<$Res> extends _$MusicEventCopyWithImpl<$Res>
    implements _$PlayRadioCopyWith<$Res> {
  __$PlayRadioCopyWithImpl(_PlayRadio _value, $Res Function(_PlayRadio) _then)
      : super(_value, (v) => _then(v as _PlayRadio));

  @override
  _PlayRadio get _value => super._value as _PlayRadio;

  @override
  $Res call({
    Object? azuraApiNowPlaying = freezed,
  }) {
    return _then(_PlayRadio(
      azuraApiNowPlaying == freezed
          ? _value.azuraApiNowPlaying
          : azuraApiNowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlaying,
    ));
  }
}

/// @nodoc

class _$_PlayRadio implements _PlayRadio {
  const _$_PlayRadio(this.azuraApiNowPlaying);

  @override
  final AzuraApiNowPlaying azuraApiNowPlaying;

  @override
  String toString() {
    return 'MusicEvent.playRadio(azuraApiNowPlaying: $azuraApiNowPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayRadio &&
            const DeepCollectionEquality()
                .equals(other.azuraApiNowPlaying, azuraApiNowPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(azuraApiNowPlaying));

  @JsonKey(ignore: true)
  @override
  _$PlayRadioCopyWith<_PlayRadio> get copyWith =>
      __$PlayRadioCopyWithImpl<_PlayRadio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AzuraApiNowPlaying azuraApiNowPlaying) playRadio,
  }) {
    return playRadio(azuraApiNowPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AzuraApiNowPlaying azuraApiNowPlaying)? playRadio,
  }) {
    return playRadio?.call(azuraApiNowPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AzuraApiNowPlaying azuraApiNowPlaying)? playRadio,
    required TResult orElse(),
  }) {
    if (playRadio != null) {
      return playRadio(azuraApiNowPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayRadio value) playRadio,
  }) {
    return playRadio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayRadio value)? playRadio,
  }) {
    return playRadio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayRadio value)? playRadio,
    required TResult orElse(),
  }) {
    if (playRadio != null) {
      return playRadio(this);
    }
    return orElse();
  }
}

abstract class _PlayRadio implements MusicEvent {
  const factory _PlayRadio(AzuraApiNowPlaying azuraApiNowPlaying) =
      _$_PlayRadio;

  @override
  AzuraApiNowPlaying get azuraApiNowPlaying;
  @override
  @JsonKey(ignore: true)
  _$PlayRadioCopyWith<_PlayRadio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MusicStateTearOff {
  const _$MusicStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Error error() {
    return const _Error();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded({required AudioPlayer audioPlayer}) {
    return _Loaded(
      audioPlayer: audioPlayer,
    );
  }
}

/// @nodoc
const $MusicState = _$MusicStateTearOff();

/// @nodoc
mixin _$MusicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
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
    required TResult Function() loading,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
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
    required TResult Function() loading,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
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
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MusicStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MusicState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MusicState {
  const factory _Loading() = _$_Loading;
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
    required TResult Function() loading,
    required TResult Function(AudioPlayer audioPlayer) loaded,
  }) {
    return loaded(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(AudioPlayer audioPlayer)? loaded,
  }) {
    return loaded?.call(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
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
  const factory _Loaded({required AudioPlayer audioPlayer}) = _$_Loaded;

  AudioPlayer get audioPlayer;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
