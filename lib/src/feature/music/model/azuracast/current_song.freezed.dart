// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentSong {
  int get elapsed => throw _privateConstructorUsedError;
  int get remaining => throw _privateConstructorUsedError;
  int get shId => throw _privateConstructorUsedError;
  int get playedAt => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String? get playList => throw _privateConstructorUsedError;
  String? get streamer => throw _privateConstructorUsedError;
  bool get isRequest => throw _privateConstructorUsedError;
  Song get song => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentSongCopyWith<CurrentSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentSongCopyWith<$Res> {
  factory $CurrentSongCopyWith(
          CurrentSong value, $Res Function(CurrentSong) then) =
      _$CurrentSongCopyWithImpl<$Res>;
  $Res call(
      {int elapsed,
      int remaining,
      int shId,
      int playedAt,
      int duration,
      String? playList,
      String? streamer,
      bool isRequest,
      Song song});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$CurrentSongCopyWithImpl<$Res> implements $CurrentSongCopyWith<$Res> {
  _$CurrentSongCopyWithImpl(this._value, this._then);

  final CurrentSong _value;
  // ignore: unused_field
  final $Res Function(CurrentSong) _then;

  @override
  $Res call({
    Object? elapsed = freezed,
    Object? remaining = freezed,
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playList = freezed,
    Object? streamer = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      elapsed: elapsed == freezed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      shId: shId == freezed
          ? _value.shId
          : shId // ignore: cast_nullable_to_non_nullable
              as int,
      playedAt: playedAt == freezed
          ? _value.playedAt
          : playedAt // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playList: playList == freezed
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as String?,
      streamer: streamer == freezed
          ? _value.streamer
          : streamer // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequest: isRequest == freezed
          ? _value.isRequest
          : isRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }

  @override
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc
abstract class _$$_CurrentSongCopyWith<$Res>
    implements $CurrentSongCopyWith<$Res> {
  factory _$$_CurrentSongCopyWith(
          _$_CurrentSong value, $Res Function(_$_CurrentSong) then) =
      __$$_CurrentSongCopyWithImpl<$Res>;
  @override
  $Res call(
      {int elapsed,
      int remaining,
      int shId,
      int playedAt,
      int duration,
      String? playList,
      String? streamer,
      bool isRequest,
      Song song});

  @override
  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$$_CurrentSongCopyWithImpl<$Res> extends _$CurrentSongCopyWithImpl<$Res>
    implements _$$_CurrentSongCopyWith<$Res> {
  __$$_CurrentSongCopyWithImpl(
      _$_CurrentSong _value, $Res Function(_$_CurrentSong) _then)
      : super(_value, (v) => _then(v as _$_CurrentSong));

  @override
  _$_CurrentSong get _value => super._value as _$_CurrentSong;

  @override
  $Res call({
    Object? elapsed = freezed,
    Object? remaining = freezed,
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playList = freezed,
    Object? streamer = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_$_CurrentSong(
      elapsed: elapsed == freezed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      shId: shId == freezed
          ? _value.shId
          : shId // ignore: cast_nullable_to_non_nullable
              as int,
      playedAt: playedAt == freezed
          ? _value.playedAt
          : playedAt // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playList: playList == freezed
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as String?,
      streamer: streamer == freezed
          ? _value.streamer
          : streamer // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequest: isRequest == freezed
          ? _value.isRequest
          : isRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_CurrentSong implements _CurrentSong {
  const _$_CurrentSong(
      {required this.elapsed,
      required this.remaining,
      required this.shId,
      required this.playedAt,
      required this.duration,
      this.playList,
      this.streamer,
      required this.isRequest,
      required this.song});

  @override
  final int elapsed;
  @override
  final int remaining;
  @override
  final int shId;
  @override
  final int playedAt;
  @override
  final int duration;
  @override
  final String? playList;
  @override
  final String? streamer;
  @override
  final bool isRequest;
  @override
  final Song song;

  @override
  String toString() {
    return 'CurrentSong(elapsed: $elapsed, remaining: $remaining, shId: $shId, playedAt: $playedAt, duration: $duration, playList: $playList, streamer: $streamer, isRequest: $isRequest, song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentSong &&
            const DeepCollectionEquality().equals(other.elapsed, elapsed) &&
            const DeepCollectionEquality().equals(other.remaining, remaining) &&
            const DeepCollectionEquality().equals(other.shId, shId) &&
            const DeepCollectionEquality().equals(other.playedAt, playedAt) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.playList, playList) &&
            const DeepCollectionEquality().equals(other.streamer, streamer) &&
            const DeepCollectionEquality().equals(other.isRequest, isRequest) &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(elapsed),
      const DeepCollectionEquality().hash(remaining),
      const DeepCollectionEquality().hash(shId),
      const DeepCollectionEquality().hash(playedAt),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(playList),
      const DeepCollectionEquality().hash(streamer),
      const DeepCollectionEquality().hash(isRequest),
      const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentSongCopyWith<_$_CurrentSong> get copyWith =>
      __$$_CurrentSongCopyWithImpl<_$_CurrentSong>(this, _$identity);
}

abstract class _CurrentSong implements CurrentSong {
  const factory _CurrentSong(
      {required final int elapsed,
      required final int remaining,
      required final int shId,
      required final int playedAt,
      required final int duration,
      final String? playList,
      final String? streamer,
      required final bool isRequest,
      required final Song song}) = _$_CurrentSong;

  @override
  int get elapsed;
  @override
  int get remaining;
  @override
  int get shId;
  @override
  int get playedAt;
  @override
  int get duration;
  @override
  String? get playList;
  @override
  String? get streamer;
  @override
  bool get isRequest;
  @override
  Song get song;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentSongCopyWith<_$_CurrentSong> get copyWith =>
      throw _privateConstructorUsedError;
}
