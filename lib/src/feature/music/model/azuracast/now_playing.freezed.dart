// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NowPlayingTearOff {
  const _$NowPlayingTearOff();

  _NowPlaying call(
      {required Song song,
      required CurrentSong currentSong,
      required Station station,
      required RadioListeners listeners}) {
    return _NowPlaying(
      song: song,
      currentSong: currentSong,
      station: station,
      listeners: listeners,
    );
  }
}

/// @nodoc
const $NowPlaying = _$NowPlayingTearOff();

/// @nodoc
mixin _$NowPlaying {
  Song get song => throw _privateConstructorUsedError;
  CurrentSong get currentSong => throw _privateConstructorUsedError;
  Station get station => throw _privateConstructorUsedError;
  RadioListeners get listeners => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res>;
  $Res call(
      {Song song,
      CurrentSong currentSong,
      Station station,
      RadioListeners listeners});

  $SongCopyWith<$Res> get song;
  $CurrentSongCopyWith<$Res> get currentSong;
  $StationCopyWith<$Res> get station;
  $RadioListenersCopyWith<$Res> get listeners;
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res> implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  final NowPlaying _value;
  // ignore: unused_field
  final $Res Function(NowPlaying) _then;

  @override
  $Res call({
    Object? song = freezed,
    Object? currentSong = freezed,
    Object? station = freezed,
    Object? listeners = freezed,
  }) {
    return _then(_value.copyWith(
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      currentSong: currentSong == freezed
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as CurrentSong,
      station: station == freezed
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as RadioListeners,
    ));
  }

  @override
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }

  @override
  $CurrentSongCopyWith<$Res> get currentSong {
    return $CurrentSongCopyWith<$Res>(_value.currentSong, (value) {
      return _then(_value.copyWith(currentSong: value));
    });
  }

  @override
  $StationCopyWith<$Res> get station {
    return $StationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value));
    });
  }

  @override
  $RadioListenersCopyWith<$Res> get listeners {
    return $RadioListenersCopyWith<$Res>(_value.listeners, (value) {
      return _then(_value.copyWith(listeners: value));
    });
  }
}

/// @nodoc
abstract class _$NowPlayingCopyWith<$Res> implements $NowPlayingCopyWith<$Res> {
  factory _$NowPlayingCopyWith(
          _NowPlaying value, $Res Function(_NowPlaying) then) =
      __$NowPlayingCopyWithImpl<$Res>;
  @override
  $Res call(
      {Song song,
      CurrentSong currentSong,
      Station station,
      RadioListeners listeners});

  @override
  $SongCopyWith<$Res> get song;
  @override
  $CurrentSongCopyWith<$Res> get currentSong;
  @override
  $StationCopyWith<$Res> get station;
  @override
  $RadioListenersCopyWith<$Res> get listeners;
}

/// @nodoc
class __$NowPlayingCopyWithImpl<$Res> extends _$NowPlayingCopyWithImpl<$Res>
    implements _$NowPlayingCopyWith<$Res> {
  __$NowPlayingCopyWithImpl(
      _NowPlaying _value, $Res Function(_NowPlaying) _then)
      : super(_value, (v) => _then(v as _NowPlaying));

  @override
  _NowPlaying get _value => super._value as _NowPlaying;

  @override
  $Res call({
    Object? song = freezed,
    Object? currentSong = freezed,
    Object? station = freezed,
    Object? listeners = freezed,
  }) {
    return _then(_NowPlaying(
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      currentSong: currentSong == freezed
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as CurrentSong,
      station: station == freezed
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as RadioListeners,
    ));
  }
}

/// @nodoc

class _$_NowPlaying implements _NowPlaying {
  const _$_NowPlaying(
      {required this.song,
      required this.currentSong,
      required this.station,
      required this.listeners});

  @override
  final Song song;
  @override
  final CurrentSong currentSong;
  @override
  final Station station;
  @override
  final RadioListeners listeners;

  @override
  String toString() {
    return 'NowPlaying(song: $song, currentSong: $currentSong, station: $station, listeners: $listeners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NowPlaying &&
            const DeepCollectionEquality().equals(other.song, song) &&
            const DeepCollectionEquality()
                .equals(other.currentSong, currentSong) &&
            const DeepCollectionEquality().equals(other.station, station) &&
            const DeepCollectionEquality().equals(other.listeners, listeners));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(song),
      const DeepCollectionEquality().hash(currentSong),
      const DeepCollectionEquality().hash(station),
      const DeepCollectionEquality().hash(listeners));

  @JsonKey(ignore: true)
  @override
  _$NowPlayingCopyWith<_NowPlaying> get copyWith =>
      __$NowPlayingCopyWithImpl<_NowPlaying>(this, _$identity);
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
      {required Song song,
      required CurrentSong currentSong,
      required Station station,
      required RadioListeners listeners}) = _$_NowPlaying;

  @override
  Song get song;
  @override
  CurrentSong get currentSong;
  @override
  Station get station;
  @override
  RadioListeners get listeners;
  @override
  @JsonKey(ignore: true)
  _$NowPlayingCopyWith<_NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}
