// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azura_api_now_playing_station_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingStationQueue _$AzuraApiNowPlayingStationQueueFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingStationQueue.fromJson(json);
}

/// @nodoc
mixin _$AzuraApiNowPlayingStationQueue {
  @JsonKey(name: 'cued_at')
  int get cuedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'played_at')
  int get playedAt => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String? get playlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_request')
  bool get isRequest => throw _privateConstructorUsedError;
  AzuraApiSong get song => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingStationQueueCopyWith<AzuraApiNowPlayingStationQueue>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  factory $AzuraApiNowPlayingStationQueueCopyWith(
          AzuraApiNowPlayingStationQueue value,
          $Res Function(AzuraApiNowPlayingStationQueue) then) =
      _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res,
          AzuraApiNowPlayingStationQueue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cued_at') int cuedAt,
      @JsonKey(name: 'played_at') int playedAt,
      int duration,
      String? playlist,
      @JsonKey(name: 'is_request') bool isRequest,
      AzuraApiSong song});

  $AzuraApiSongCopyWith<$Res> get song;
}

/// @nodoc
class _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res,
        $Val extends AzuraApiNowPlayingStationQueue>
    implements $AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  _$AzuraApiNowPlayingStationQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuedAt = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playlist = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      cuedAt: null == cuedAt
          ? _value.cuedAt
          : cuedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AzuraApiNowPlayingStationQueueImplCopyWith<$Res>
    implements $AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingStationQueueImplCopyWith(
          _$AzuraApiNowPlayingStationQueueImpl value,
          $Res Function(_$AzuraApiNowPlayingStationQueueImpl) then) =
      __$$AzuraApiNowPlayingStationQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cued_at') int cuedAt,
      @JsonKey(name: 'played_at') int playedAt,
      int duration,
      String? playlist,
      @JsonKey(name: 'is_request') bool isRequest,
      AzuraApiSong song});

  @override
  $AzuraApiSongCopyWith<$Res> get song;
}

/// @nodoc
class __$$AzuraApiNowPlayingStationQueueImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res,
        _$AzuraApiNowPlayingStationQueueImpl>
    implements _$$AzuraApiNowPlayingStationQueueImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingStationQueueImplCopyWithImpl(
      _$AzuraApiNowPlayingStationQueueImpl _value,
      $Res Function(_$AzuraApiNowPlayingStationQueueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuedAt = null,
    Object? playedAt = null,
    Object? duration = null,
    Object? playlist = freezed,
    Object? isRequest = null,
    Object? song = null,
  }) {
    return _then(_$AzuraApiNowPlayingStationQueueImpl(
      cuedAt: null == cuedAt
          ? _value.cuedAt
          : cuedAt // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$AzuraApiNowPlayingStationQueueImpl
    implements _AzuraApiNowPlayingStationQueue {
  const _$AzuraApiNowPlayingStationQueueImpl(
      {@JsonKey(name: 'cued_at') required this.cuedAt,
      @JsonKey(name: 'played_at') required this.playedAt,
      required this.duration,
      this.playlist,
      @JsonKey(name: 'is_request') required this.isRequest,
      required this.song});

  factory _$AzuraApiNowPlayingStationQueueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AzuraApiNowPlayingStationQueueImplFromJson(json);

  @override
  @JsonKey(name: 'cued_at')
  final int cuedAt;
  @override
  @JsonKey(name: 'played_at')
  final int playedAt;
  @override
  final int duration;
  @override
  final String? playlist;
  @override
  @JsonKey(name: 'is_request')
  final bool isRequest;
  @override
  final AzuraApiSong song;

  @override
  String toString() {
    return 'AzuraApiNowPlayingStationQueue(cuedAt: $cuedAt, playedAt: $playedAt, duration: $duration, playlist: $playlist, isRequest: $isRequest, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingStationQueueImpl &&
            (identical(other.cuedAt, cuedAt) || other.cuedAt == cuedAt) &&
            (identical(other.playedAt, playedAt) ||
                other.playedAt == playedAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.isRequest, isRequest) ||
                other.isRequest == isRequest) &&
            (identical(other.song, song) || other.song == song));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cuedAt, playedAt, duration, playlist, isRequest, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingStationQueueImplCopyWith<
          _$AzuraApiNowPlayingStationQueueImpl>
      get copyWith => __$$AzuraApiNowPlayingStationQueueImplCopyWithImpl<
          _$AzuraApiNowPlayingStationQueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiNowPlayingStationQueueImplToJson(
      this,
    );
  }
}

abstract class _AzuraApiNowPlayingStationQueue
    implements AzuraApiNowPlayingStationQueue {
  const factory _AzuraApiNowPlayingStationQueue(
      {@JsonKey(name: 'cued_at') required final int cuedAt,
      @JsonKey(name: 'played_at') required final int playedAt,
      required final int duration,
      final String? playlist,
      @JsonKey(name: 'is_request') required final bool isRequest,
      required final AzuraApiSong song}) = _$AzuraApiNowPlayingStationQueueImpl;

  factory _AzuraApiNowPlayingStationQueue.fromJson(Map<String, dynamic> json) =
      _$AzuraApiNowPlayingStationQueueImpl.fromJson;

  @override
  @JsonKey(name: 'cued_at')
  int get cuedAt;
  @override
  @JsonKey(name: 'played_at')
  int get playedAt;
  @override
  int get duration;
  @override
  String? get playlist;
  @override
  @JsonKey(name: 'is_request')
  bool get isRequest;
  @override
  AzuraApiSong get song;
  @override
  @JsonKey(ignore: true)
  _$$AzuraApiNowPlayingStationQueueImplCopyWith<
          _$AzuraApiNowPlayingStationQueueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
