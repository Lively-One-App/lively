// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing_current_song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingCurrentSong _$AzuraApiNowPlayingCurrentSongFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingCurrentSong.fromJson(json);
}

/// @nodoc
class _$AzuraApiNowPlayingCurrentSongTearOff {
  const _$AzuraApiNowPlayingCurrentSongTearOff();

  _AzuraApiNowPlayingCurrentSong call(
      {required int elapsed,
      required int remaining,
      @JsonKey(name: 'sh_id') required int shId,
      @JsonKey(name: 'played_at') required int playedAt,
      required int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') required bool isRequest,
      required AzuraApiSong song}) {
    return _AzuraApiNowPlayingCurrentSong(
      elapsed: elapsed,
      remaining: remaining,
      shId: shId,
      playedAt: playedAt,
      duration: duration,
      playlist: playlist,
      streamer: streamer,
      isRequest: isRequest,
      song: song,
    );
  }

  AzuraApiNowPlayingCurrentSong fromJson(Map<String, Object?> json) {
    return AzuraApiNowPlayingCurrentSong.fromJson(json);
  }
}

/// @nodoc
const $AzuraApiNowPlayingCurrentSong = _$AzuraApiNowPlayingCurrentSongTearOff();

/// @nodoc
mixin _$AzuraApiNowPlayingCurrentSong {
  int get elapsed => throw _privateConstructorUsedError;
  int get remaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'sh_id')
  int get shId => throw _privateConstructorUsedError;
  @JsonKey(name: 'played_at')
  int get playedAt => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String? get playlist => throw _privateConstructorUsedError;
  String? get streamer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_request')
  bool get isRequest => throw _privateConstructorUsedError;
  AzuraApiSong get song => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingCurrentSongCopyWith<AzuraApiNowPlayingCurrentSong>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingCurrentSongCopyWith<$Res> {
  factory $AzuraApiNowPlayingCurrentSongCopyWith(
          AzuraApiNowPlayingCurrentSong value,
          $Res Function(AzuraApiNowPlayingCurrentSong) then) =
      _$AzuraApiNowPlayingCurrentSongCopyWithImpl<$Res>;
  $Res call(
      {int elapsed,
      int remaining,
      @JsonKey(name: 'sh_id') int shId,
      @JsonKey(name: 'played_at') int playedAt,
      int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') bool isRequest,
      AzuraApiSong song});

  $AzuraApiSongCopyWith<$Res> get song;
}

/// @nodoc
class _$AzuraApiNowPlayingCurrentSongCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingCurrentSongCopyWith<$Res> {
  _$AzuraApiNowPlayingCurrentSongCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingCurrentSong _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingCurrentSong) _then;

  @override
  $Res call({
    Object? elapsed = freezed,
    Object? remaining = freezed,
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
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
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
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
              as AzuraApiSong,
    ));
  }

  @override
  $AzuraApiSongCopyWith<$Res> get song {
    return $AzuraApiSongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc
abstract class _$AzuraApiNowPlayingCurrentSongCopyWith<$Res>
    implements $AzuraApiNowPlayingCurrentSongCopyWith<$Res> {
  factory _$AzuraApiNowPlayingCurrentSongCopyWith(
          _AzuraApiNowPlayingCurrentSong value,
          $Res Function(_AzuraApiNowPlayingCurrentSong) then) =
      __$AzuraApiNowPlayingCurrentSongCopyWithImpl<$Res>;
  @override
  $Res call(
      {int elapsed,
      int remaining,
      @JsonKey(name: 'sh_id') int shId,
      @JsonKey(name: 'played_at') int playedAt,
      int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') bool isRequest,
      AzuraApiSong song});

  @override
  $AzuraApiSongCopyWith<$Res> get song;
}

/// @nodoc
class __$AzuraApiNowPlayingCurrentSongCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingCurrentSongCopyWithImpl<$Res>
    implements _$AzuraApiNowPlayingCurrentSongCopyWith<$Res> {
  __$AzuraApiNowPlayingCurrentSongCopyWithImpl(
      _AzuraApiNowPlayingCurrentSong _value,
      $Res Function(_AzuraApiNowPlayingCurrentSong) _then)
      : super(_value, (v) => _then(v as _AzuraApiNowPlayingCurrentSong));

  @override
  _AzuraApiNowPlayingCurrentSong get _value =>
      super._value as _AzuraApiNowPlayingCurrentSong;

  @override
  $Res call({
    Object? elapsed = freezed,
    Object? remaining = freezed,
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
    Object? streamer = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_AzuraApiNowPlayingCurrentSong(
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
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
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
              as AzuraApiSong,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AzuraApiNowPlayingCurrentSong
    implements _AzuraApiNowPlayingCurrentSong {
  _$_AzuraApiNowPlayingCurrentSong(
      {required this.elapsed,
      required this.remaining,
      @JsonKey(name: 'sh_id') required this.shId,
      @JsonKey(name: 'played_at') required this.playedAt,
      required this.duration,
      this.playlist,
      this.streamer,
      @JsonKey(name: 'is_request') required this.isRequest,
      required this.song});

  factory _$_AzuraApiNowPlayingCurrentSong.fromJson(
          Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingCurrentSongFromJson(json);

  @override
  final int elapsed;
  @override
  final int remaining;
  @override
  @JsonKey(name: 'sh_id')
  final int shId;
  @override
  @JsonKey(name: 'played_at')
  final int playedAt;
  @override
  final int duration;
  @override
  final String? playlist;
  @override
  final String? streamer;
  @override
  @JsonKey(name: 'is_request')
  final bool isRequest;
  @override
  final AzuraApiSong song;

  @override
  String toString() {
    return 'AzuraApiNowPlayingCurrentSong(elapsed: $elapsed, remaining: $remaining, shId: $shId, playedAt: $playedAt, duration: $duration, playlist: $playlist, streamer: $streamer, isRequest: $isRequest, song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiNowPlayingCurrentSong &&
            const DeepCollectionEquality().equals(other.elapsed, elapsed) &&
            const DeepCollectionEquality().equals(other.remaining, remaining) &&
            const DeepCollectionEquality().equals(other.shId, shId) &&
            const DeepCollectionEquality().equals(other.playedAt, playedAt) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.playlist, playlist) &&
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
      const DeepCollectionEquality().hash(playlist),
      const DeepCollectionEquality().hash(streamer),
      const DeepCollectionEquality().hash(isRequest),
      const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiNowPlayingCurrentSongCopyWith<_AzuraApiNowPlayingCurrentSong>
      get copyWith => __$AzuraApiNowPlayingCurrentSongCopyWithImpl<
          _AzuraApiNowPlayingCurrentSong>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingCurrentSongToJson(this);
  }
}

abstract class _AzuraApiNowPlayingCurrentSong
    implements AzuraApiNowPlayingCurrentSong {
  factory _AzuraApiNowPlayingCurrentSong(
      {required int elapsed,
      required int remaining,
      @JsonKey(name: 'sh_id') required int shId,
      @JsonKey(name: 'played_at') required int playedAt,
      required int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') required bool isRequest,
      required AzuraApiSong song}) = _$_AzuraApiNowPlayingCurrentSong;

  factory _AzuraApiNowPlayingCurrentSong.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingCurrentSong.fromJson;

  @override
  int get elapsed;
  @override
  int get remaining;
  @override
  @JsonKey(name: 'sh_id')
  int get shId;
  @override
  @JsonKey(name: 'played_at')
  int get playedAt;
  @override
  int get duration;
  @override
  String? get playlist;
  @override
  String? get streamer;
  @override
  @JsonKey(name: 'is_request')
  bool get isRequest;
  @override
  AzuraApiSong get song;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiNowPlayingCurrentSongCopyWith<_AzuraApiNowPlayingCurrentSong>
      get copyWith => throw _privateConstructorUsedError;
}
