// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing_song_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingSongHistory _$AzuraApiNowPlayingSongHistoryFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingSongHistory.fromJson(json);
}

/// @nodoc
mixin _$AzuraApiNowPlayingSongHistory {
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
  $AzuraApiNowPlayingSongHistoryCopyWith<AzuraApiNowPlayingSongHistory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  factory $AzuraApiNowPlayingSongHistoryCopyWith(
          AzuraApiNowPlayingSongHistory value,
          $Res Function(AzuraApiNowPlayingSongHistory) then) =
      _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sh_id') int shId,
      @JsonKey(name: 'played_at') int playedAt,
      int duration,
      String? playlist,
      String? streamer,
      @JsonKey(name: 'is_request') bool isRequest,
      AzuraApiSong song});

  $AzuraApiSongCopyWith<$Res> get song;
}

/// @nodoc
class _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  _$AzuraApiNowPlayingSongHistoryCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingSongHistory _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingSongHistory) _then;

  @override
  $Res call({
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
    Object? streamer = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_AzuraApiNowPlayingSongHistoryCopyWith<$Res>
    implements $AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  factory _$$_AzuraApiNowPlayingSongHistoryCopyWith(
          _$_AzuraApiNowPlayingSongHistory value,
          $Res Function(_$_AzuraApiNowPlayingSongHistory) then) =
      __$$_AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sh_id') int shId,
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
class __$$_AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res>
    implements _$$_AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  __$$_AzuraApiNowPlayingSongHistoryCopyWithImpl(
      _$_AzuraApiNowPlayingSongHistory _value,
      $Res Function(_$_AzuraApiNowPlayingSongHistory) _then)
      : super(_value, (v) => _then(v as _$_AzuraApiNowPlayingSongHistory));

  @override
  _$_AzuraApiNowPlayingSongHistory get _value =>
      super._value as _$_AzuraApiNowPlayingSongHistory;

  @override
  $Res call({
    Object? shId = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
    Object? streamer = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_$_AzuraApiNowPlayingSongHistory(
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
@JsonSerializable()
class _$_AzuraApiNowPlayingSongHistory
    implements _AzuraApiNowPlayingSongHistory {
  const _$_AzuraApiNowPlayingSongHistory(
      {@JsonKey(name: 'sh_id') required this.shId,
      @JsonKey(name: 'played_at') required this.playedAt,
      required this.duration,
      this.playlist,
      this.streamer,
      @JsonKey(name: 'is_request') required this.isRequest,
      required this.song});

  factory _$_AzuraApiNowPlayingSongHistory.fromJson(
          Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingSongHistoryFromJson(json);

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
    return 'AzuraApiNowPlayingSongHistory(shId: $shId, playedAt: $playedAt, duration: $duration, playlist: $playlist, streamer: $streamer, isRequest: $isRequest, song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AzuraApiNowPlayingSongHistory &&
            const DeepCollectionEquality().equals(other.shId, shId) &&
            const DeepCollectionEquality().equals(other.playedAt, playedAt) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.playlist, playlist) &&
            const DeepCollectionEquality().equals(other.streamer, streamer) &&
            const DeepCollectionEquality().equals(other.isRequest, isRequest) &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shId),
      const DeepCollectionEquality().hash(playedAt),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(playlist),
      const DeepCollectionEquality().hash(streamer),
      const DeepCollectionEquality().hash(isRequest),
      const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$$_AzuraApiNowPlayingSongHistoryCopyWith<_$_AzuraApiNowPlayingSongHistory>
      get copyWith => __$$_AzuraApiNowPlayingSongHistoryCopyWithImpl<
          _$_AzuraApiNowPlayingSongHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingSongHistoryToJson(this);
  }
}

abstract class _AzuraApiNowPlayingSongHistory
    implements AzuraApiNowPlayingSongHistory {
  const factory _AzuraApiNowPlayingSongHistory(
      {@JsonKey(name: 'sh_id') required final int shId,
      @JsonKey(name: 'played_at') required final int playedAt,
      required final int duration,
      final String? playlist,
      final String? streamer,
      @JsonKey(name: 'is_request') required final bool isRequest,
      required final AzuraApiSong song}) = _$_AzuraApiNowPlayingSongHistory;

  factory _AzuraApiNowPlayingSongHistory.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingSongHistory.fromJson;

  @override
  @JsonKey(name: 'sh_id')
  int get shId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'played_at')
  int get playedAt => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  String? get playlist => throw _privateConstructorUsedError;
  @override
  String? get streamer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_request')
  bool get isRequest => throw _privateConstructorUsedError;
  @override
  AzuraApiSong get song => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AzuraApiNowPlayingSongHistoryCopyWith<_$_AzuraApiNowPlayingSongHistory>
      get copyWith => throw _privateConstructorUsedError;
}
