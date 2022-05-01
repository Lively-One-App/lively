// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res>;
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
class _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  _$AzuraApiNowPlayingStationQueueCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingStationQueue _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingStationQueue) _then;

  @override
  $Res call({
    Object? cuedAt = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      cuedAt: cuedAt == freezed
          ? _value.cuedAt
          : cuedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$AzuraApiNowPlayingStationQueueCopyWith<$Res>
    implements $AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  factory _$AzuraApiNowPlayingStationQueueCopyWith(
          _AzuraApiNowPlayingStationQueue value,
          $Res Function(_AzuraApiNowPlayingStationQueue) then) =
      __$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res>;
  @override
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
class __$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingStationQueueCopyWithImpl<$Res>
    implements _$AzuraApiNowPlayingStationQueueCopyWith<$Res> {
  __$AzuraApiNowPlayingStationQueueCopyWithImpl(
      _AzuraApiNowPlayingStationQueue _value,
      $Res Function(_AzuraApiNowPlayingStationQueue) _then)
      : super(_value, (v) => _then(v as _AzuraApiNowPlayingStationQueue));

  @override
  _AzuraApiNowPlayingStationQueue get _value =>
      super._value as _AzuraApiNowPlayingStationQueue;

  @override
  $Res call({
    Object? cuedAt = freezed,
    Object? playedAt = freezed,
    Object? duration = freezed,
    Object? playlist = freezed,
    Object? isRequest = freezed,
    Object? song = freezed,
  }) {
    return _then(_AzuraApiNowPlayingStationQueue(
      cuedAt: cuedAt == freezed
          ? _value.cuedAt
          : cuedAt // ignore: cast_nullable_to_non_nullable
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
class _$_AzuraApiNowPlayingStationQueue
    implements _AzuraApiNowPlayingStationQueue {
  const _$_AzuraApiNowPlayingStationQueue(
      {@JsonKey(name: 'cued_at') required this.cuedAt,
      @JsonKey(name: 'played_at') required this.playedAt,
      required this.duration,
      this.playlist,
      @JsonKey(name: 'is_request') required this.isRequest,
      required this.song});

  factory _$_AzuraApiNowPlayingStationQueue.fromJson(
          Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingStationQueueFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiNowPlayingStationQueue &&
            const DeepCollectionEquality().equals(other.cuedAt, cuedAt) &&
            const DeepCollectionEquality().equals(other.playedAt, playedAt) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.playlist, playlist) &&
            const DeepCollectionEquality().equals(other.isRequest, isRequest) &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cuedAt),
      const DeepCollectionEquality().hash(playedAt),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(playlist),
      const DeepCollectionEquality().hash(isRequest),
      const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiNowPlayingStationQueueCopyWith<_AzuraApiNowPlayingStationQueue>
      get copyWith => __$AzuraApiNowPlayingStationQueueCopyWithImpl<
          _AzuraApiNowPlayingStationQueue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingStationQueueToJson(this);
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
      required final AzuraApiSong song}) = _$_AzuraApiNowPlayingStationQueue;

  factory _AzuraApiNowPlayingStationQueue.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingStationQueue.fromJson;

  @override
  @JsonKey(name: 'cued_at')
  int get cuedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'played_at')
  int get playedAt => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  String? get playlist => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_request')
  bool get isRequest => throw _privateConstructorUsedError;
  @override
  AzuraApiSong get song => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiNowPlayingStationQueueCopyWith<_AzuraApiNowPlayingStationQueue>
      get copyWith => throw _privateConstructorUsedError;
}
