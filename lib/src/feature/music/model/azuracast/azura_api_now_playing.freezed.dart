// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azura_api_now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AzuraApiNowPlaying {
  AzuraApiNowPlayingStation get station => throw _privateConstructorUsedError;
  AzuraApiNowPlayingListeners get listeners =>
      throw _privateConstructorUsedError;
  AzuraApiNowPlayingLive get live => throw _privateConstructorUsedError;
  @JsonKey(name: 'now_playing')
  AzuraApiNowPlayingCurrentSong get nowPlaying =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'playing_next')
  AzuraApiNowPlayingStationQueue get playingNext =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'song_history')
  List<AzuraApiNowPlayingSongHistory> get songHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;
  cacheFrom? get cache => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AzuraApiNowPlayingCopyWith<AzuraApiNowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingCopyWith<$Res> {
  factory $AzuraApiNowPlayingCopyWith(
          AzuraApiNowPlaying value, $Res Function(AzuraApiNowPlaying) then) =
      _$AzuraApiNowPlayingCopyWithImpl<$Res, AzuraApiNowPlaying>;
  @useResult
  $Res call(
      {AzuraApiNowPlayingStation station,
      AzuraApiNowPlayingListeners listeners,
      AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing') AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next') AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
      List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online') bool isOnline,
      cacheFrom? cache});

  $AzuraApiNowPlayingStationCopyWith<$Res> get station;
  $AzuraApiNowPlayingListenersCopyWith<$Res> get listeners;
  $AzuraApiNowPlayingLiveCopyWith<$Res> get live;
  $AzuraApiNowPlayingCurrentSongCopyWith<$Res> get nowPlaying;
  $AzuraApiNowPlayingStationQueueCopyWith<$Res> get playingNext;
}

/// @nodoc
class _$AzuraApiNowPlayingCopyWithImpl<$Res, $Val extends AzuraApiNowPlaying>
    implements $AzuraApiNowPlayingCopyWith<$Res> {
  _$AzuraApiNowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? listeners = null,
    Object? live = null,
    Object? nowPlaying = null,
    Object? playingNext = null,
    Object? songHistory = null,
    Object? isOnline = null,
    Object? cache = freezed,
  }) {
    return _then(_value.copyWith(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStation,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingListeners,
      live: null == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingLive,
      nowPlaying: null == nowPlaying
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingCurrentSong,
      playingNext: null == playingNext
          ? _value.playingNext
          : playingNext // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStationQueue,
      songHistory: null == songHistory
          ? _value.songHistory
          : songHistory // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingSongHistory>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      cache: freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as cacheFrom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiNowPlayingStationCopyWith<$Res> get station {
    return $AzuraApiNowPlayingStationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiNowPlayingListenersCopyWith<$Res> get listeners {
    return $AzuraApiNowPlayingListenersCopyWith<$Res>(_value.listeners,
        (value) {
      return _then(_value.copyWith(listeners: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiNowPlayingLiveCopyWith<$Res> get live {
    return $AzuraApiNowPlayingLiveCopyWith<$Res>(_value.live, (value) {
      return _then(_value.copyWith(live: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiNowPlayingCurrentSongCopyWith<$Res> get nowPlaying {
    return $AzuraApiNowPlayingCurrentSongCopyWith<$Res>(_value.nowPlaying,
        (value) {
      return _then(_value.copyWith(nowPlaying: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzuraApiNowPlayingStationQueueCopyWith<$Res> get playingNext {
    return $AzuraApiNowPlayingStationQueueCopyWith<$Res>(_value.playingNext,
        (value) {
      return _then(_value.copyWith(playingNext: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AzuraApiNowPlayingImplCopyWith<$Res>
    implements $AzuraApiNowPlayingCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingImplCopyWith(_$AzuraApiNowPlayingImpl value,
          $Res Function(_$AzuraApiNowPlayingImpl) then) =
      __$$AzuraApiNowPlayingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AzuraApiNowPlayingStation station,
      AzuraApiNowPlayingListeners listeners,
      AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing') AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next') AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
      List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online') bool isOnline,
      cacheFrom? cache});

  @override
  $AzuraApiNowPlayingStationCopyWith<$Res> get station;
  @override
  $AzuraApiNowPlayingListenersCopyWith<$Res> get listeners;
  @override
  $AzuraApiNowPlayingLiveCopyWith<$Res> get live;
  @override
  $AzuraApiNowPlayingCurrentSongCopyWith<$Res> get nowPlaying;
  @override
  $AzuraApiNowPlayingStationQueueCopyWith<$Res> get playingNext;
}

/// @nodoc
class __$$AzuraApiNowPlayingImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingCopyWithImpl<$Res, _$AzuraApiNowPlayingImpl>
    implements _$$AzuraApiNowPlayingImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingImplCopyWithImpl(_$AzuraApiNowPlayingImpl _value,
      $Res Function(_$AzuraApiNowPlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? listeners = null,
    Object? live = null,
    Object? nowPlaying = null,
    Object? playingNext = null,
    Object? songHistory = null,
    Object? isOnline = null,
    Object? cache = freezed,
  }) {
    return _then(_$AzuraApiNowPlayingImpl(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStation,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingListeners,
      live: null == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingLive,
      nowPlaying: null == nowPlaying
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingCurrentSong,
      playingNext: null == playingNext
          ? _value.playingNext
          : playingNext // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStationQueue,
      songHistory: null == songHistory
          ? _value._songHistory
          : songHistory // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingSongHistory>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      cache: freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as cacheFrom?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AzuraApiNowPlayingImpl implements _AzuraApiNowPlaying {
  const _$AzuraApiNowPlayingImpl(
      {required this.station,
      required this.listeners,
      required this.live,
      @JsonKey(name: 'now_playing') required this.nowPlaying,
      @JsonKey(name: 'playing_next') required this.playingNext,
      @JsonKey(name: 'song_history')
      required final List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online') required this.isOnline,
      this.cache})
      : _songHistory = songHistory;

  @override
  final AzuraApiNowPlayingStation station;
  @override
  final AzuraApiNowPlayingListeners listeners;
  @override
  final AzuraApiNowPlayingLive live;
  @override
  @JsonKey(name: 'now_playing')
  final AzuraApiNowPlayingCurrentSong nowPlaying;
  @override
  @JsonKey(name: 'playing_next')
  final AzuraApiNowPlayingStationQueue playingNext;
  final List<AzuraApiNowPlayingSongHistory> _songHistory;
  @override
  @JsonKey(name: 'song_history')
  List<AzuraApiNowPlayingSongHistory> get songHistory {
    if (_songHistory is EqualUnmodifiableListView) return _songHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songHistory);
  }

  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;
  @override
  final cacheFrom? cache;

  @override
  String toString() {
    return 'AzuraApiNowPlaying(station: $station, listeners: $listeners, live: $live, nowPlaying: $nowPlaying, playingNext: $playingNext, songHistory: $songHistory, isOnline: $isOnline, cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners) &&
            (identical(other.live, live) || other.live == live) &&
            (identical(other.nowPlaying, nowPlaying) ||
                other.nowPlaying == nowPlaying) &&
            (identical(other.playingNext, playingNext) ||
                other.playingNext == playingNext) &&
            const DeepCollectionEquality()
                .equals(other._songHistory, _songHistory) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.cache, cache) || other.cache == cache));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      station,
      listeners,
      live,
      nowPlaying,
      playingNext,
      const DeepCollectionEquality().hash(_songHistory),
      isOnline,
      cache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingImplCopyWith<_$AzuraApiNowPlayingImpl> get copyWith =>
      __$$AzuraApiNowPlayingImplCopyWithImpl<_$AzuraApiNowPlayingImpl>(
          this, _$identity);
}

abstract class _AzuraApiNowPlaying implements AzuraApiNowPlaying {
  const factory _AzuraApiNowPlaying(
      {required final AzuraApiNowPlayingStation station,
      required final AzuraApiNowPlayingListeners listeners,
      required final AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing')
      required final AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next')
      required final AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
      required final List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online') required final bool isOnline,
      final cacheFrom? cache}) = _$AzuraApiNowPlayingImpl;

  @override
  AzuraApiNowPlayingStation get station;
  @override
  AzuraApiNowPlayingListeners get listeners;
  @override
  AzuraApiNowPlayingLive get live;
  @override
  @JsonKey(name: 'now_playing')
  AzuraApiNowPlayingCurrentSong get nowPlaying;
  @override
  @JsonKey(name: 'playing_next')
  AzuraApiNowPlayingStationQueue get playingNext;
  @override
  @JsonKey(name: 'song_history')
  List<AzuraApiNowPlayingSongHistory> get songHistory;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;
  @override
  cacheFrom? get cache;
  @override
  @JsonKey(ignore: true)
  _$$AzuraApiNowPlayingImplCopyWith<_$AzuraApiNowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
