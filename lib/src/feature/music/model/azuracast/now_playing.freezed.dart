// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
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
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? currentSong = null,
    Object? station = null,
    Object? listeners = null,
  }) {
    return _then(_value.copyWith(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      currentSong: null == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as CurrentSong,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as RadioListeners,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentSongCopyWith<$Res> get currentSong {
    return $CurrentSongCopyWith<$Res>(_value.currentSong, (value) {
      return _then(_value.copyWith(currentSong: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get station {
    return $StationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RadioListenersCopyWith<$Res> get listeners {
    return $RadioListenersCopyWith<$Res>(_value.listeners, (value) {
      return _then(_value.copyWith(listeners: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingImplCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$NowPlayingImplCopyWith(
          _$NowPlayingImpl value, $Res Function(_$NowPlayingImpl) then) =
      __$$NowPlayingImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$NowPlayingImplCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$NowPlayingImpl>
    implements _$$NowPlayingImplCopyWith<$Res> {
  __$$NowPlayingImplCopyWithImpl(
      _$NowPlayingImpl _value, $Res Function(_$NowPlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? currentSong = null,
    Object? station = null,
    Object? listeners = null,
  }) {
    return _then(_$NowPlayingImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      currentSong: null == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as CurrentSong,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as RadioListeners,
    ));
  }
}

/// @nodoc

class _$NowPlayingImpl implements _NowPlaying {
  const _$NowPlayingImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingImpl &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, song, currentSong, station, listeners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      __$$NowPlayingImplCopyWithImpl<_$NowPlayingImpl>(this, _$identity);
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
      {required final Song song,
      required final CurrentSong currentSong,
      required final Station station,
      required final RadioListeners listeners}) = _$NowPlayingImpl;

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
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
