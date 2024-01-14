// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res,
          AzuraApiNowPlayingSongHistory>;
  @useResult
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
class _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res,
        $Val extends AzuraApiNowPlayingSongHistory>
    implements $AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  _$AzuraApiNowPlayingSongHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shId = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playlist = freezed,
    Object? streamer = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
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
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
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
              as AzuraApiSong,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiSongCopyWith<$Res> get song {
    return $AzuraApiSongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AzuraApiNowPlayingSongHistoryImplCopyWith<$Res>
    implements $AzuraApiNowPlayingSongHistoryCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingSongHistoryImplCopyWith(
          _$AzuraApiNowPlayingSongHistoryImpl value,
          $Res Function(_$AzuraApiNowPlayingSongHistoryImpl) then) =
      __$$AzuraApiNowPlayingSongHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$AzuraApiNowPlayingSongHistoryImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingSongHistoryCopyWithImpl<$Res,
        _$AzuraApiNowPlayingSongHistoryImpl>
    implements _$$AzuraApiNowPlayingSongHistoryImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingSongHistoryImplCopyWithImpl(
      _$AzuraApiNowPlayingSongHistoryImpl _value,
      $Res Function(_$AzuraApiNowPlayingSongHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shId = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playlist = freezed,
    Object? streamer = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_$AzuraApiNowPlayingSongHistoryImpl(
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
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
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
              as AzuraApiSong,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AzuraApiNowPlayingSongHistoryImpl
    implements _AzuraApiNowPlayingSongHistory {
  const _$AzuraApiNowPlayingSongHistoryImpl(
      {@JsonKey(name: 'sh_id') required this.shId,
      @JsonKey(name: 'played_at') required this.playedAt,
      required this.duration,
      this.playlist,
      this.streamer,
      @JsonKey(name: 'is_request') required this.isRequest,
      required this.song});

  factory _$AzuraApiNowPlayingSongHistoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AzuraApiNowPlayingSongHistoryImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingSongHistoryImpl &&
            (identical(other.shId, shId) || other.shId == shId) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.streamer, streamer) ||
                other.streamer == streamer) &&
            (identical(other.isRequest, isRequest) ||
                other.isRequest == isRequest) &&
            (identical(other.song, song) || other.song == song));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shId, playedAt, duration,
      playlist, streamer, isRequest, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingSongHistoryImplCopyWith<
          _$AzuraApiNowPlayingSongHistoryImpl>
      get copyWith => __$$AzuraApiNowPlayingSongHistoryImplCopyWithImpl<
          _$AzuraApiNowPlayingSongHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiNowPlayingSongHistoryImplToJson(
      this,
    );
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
      required final AzuraApiSong song}) = _$AzuraApiNowPlayingSongHistoryImpl;

  factory _AzuraApiNowPlayingSongHistory.fromJson(Map<String, dynamic> json) =
      _$AzuraApiNowPlayingSongHistoryImpl.fromJson;

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
  _$$AzuraApiNowPlayingSongHistoryImplCopyWith<
          _$AzuraApiNowPlayingSongHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
