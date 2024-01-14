// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CurrentSongCopyWithImpl<$Res, CurrentSong>;
  @useResult
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
class _$CurrentSongCopyWithImpl<$Res, $Val extends CurrentSong>
    implements $CurrentSongCopyWith<$Res> {
  _$CurrentSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsed = null,
    Object? remaining = null,
    Object? shId = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playList = freezed,
    Object? streamer = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      shId: null == shId
          ? _value.shId
          : shId // ignore: cast_nullable_to_non_nullable
              as int,
      playedAt: null == playedAt
          ? _value.playedAt
          : playedAt // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playList: freezed == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as String?,
      streamer: freezed == streamer
          ? _value.streamer
          : streamer // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequest: null == isRequest
          ? _value.isRequest
          : isRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentSongImplCopyWith<$Res>
    implements $CurrentSongCopyWith<$Res> {
  factory _$$CurrentSongImplCopyWith(
          _$CurrentSongImpl value, $Res Function(_$CurrentSongImpl) then) =
      __$$CurrentSongImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$CurrentSongImplCopyWithImpl<$Res>
    extends _$CurrentSongCopyWithImpl<$Res, _$CurrentSongImpl>
    implements _$$CurrentSongImplCopyWith<$Res> {
  __$$CurrentSongImplCopyWithImpl(
      _$CurrentSongImpl _value, $Res Function(_$CurrentSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsed = null,
    Object? remaining = null,
    Object? shId = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playList = freezed,
    Object? streamer = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_$CurrentSongImpl(
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      shId: null == shId
          ? _value.shId
          : shId // ignore: cast_nullable_to_non_nullable
              as int,
      playedAt: null == playedAt
          ? _value.playedAt
          : playedAt // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playList: freezed == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as String?,
      streamer: freezed == streamer
          ? _value.streamer
          : streamer // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequest: null == isRequest
          ? _value.isRequest
          : isRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$CurrentSongImpl implements _CurrentSong {
  const _$CurrentSongImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSongImpl &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed) &&
            (identical(other.remaining, remaining) ||
                other.remaining == remaining) &&
            (identical(other.shId, shId) || other.shId == shId) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playList, playList) ||
                other.playList == playList) &&
            (identical(other.streamer, streamer) ||
                other.streamer == streamer) &&
            (identical(other.isRequest, isRequest) ||
                other.isRequest == isRequest) &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsed, remaining, shId,
      playedAt, duration, playList, streamer, isRequest, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSongImplCopyWith<_$CurrentSongImpl> get copyWith =>
      __$$CurrentSongImplCopyWithImpl<_$CurrentSongImpl>(this, _$identity);
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
      required final Song song}) = _$CurrentSongImpl;

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
  _$$CurrentSongImplCopyWith<_$CurrentSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
