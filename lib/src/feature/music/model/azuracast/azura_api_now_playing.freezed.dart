// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlaying _$AzuraApiNowPlayingFromJson(Map<String, dynamic> json) {
  return _AzuraApiNowPlaying.fromJson(json);
}

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingCopyWith<AzuraApiNowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingCopyWith<$Res> {
  factory $AzuraApiNowPlayingCopyWith(
          AzuraApiNowPlaying value, $Res Function(AzuraApiNowPlaying) then) =
      _$AzuraApiNowPlayingCopyWithImpl<$Res>;
  $Res call(
      {AzuraApiNowPlayingStation station,
      AzuraApiNowPlayingListeners listeners,
      AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing')
          AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next')
          AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
          List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online')
          bool isOnline,
      cacheFrom? cache});

  $AzuraApiNowPlayingStationCopyWith<$Res> get station;
  $AzuraApiNowPlayingListenersCopyWith<$Res> get listeners;
  $AzuraApiNowPlayingLiveCopyWith<$Res> get live;
  $AzuraApiNowPlayingCurrentSongCopyWith<$Res> get nowPlaying;
  $AzuraApiNowPlayingStationQueueCopyWith<$Res> get playingNext;
}

/// @nodoc
class _$AzuraApiNowPlayingCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingCopyWith<$Res> {
  _$AzuraApiNowPlayingCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlaying _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlaying) _then;

  @override
  $Res call({
    Object? station = freezed,
    Object? listeners = freezed,
    Object? live = freezed,
    Object? nowPlaying = freezed,
    Object? playingNext = freezed,
    Object? songHistory = freezed,
    Object? isOnline = freezed,
    Object? cache = freezed,
  }) {
    return _then(_value.copyWith(
      station: station == freezed
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStation,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingListeners,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingLive,
      nowPlaying: nowPlaying == freezed
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingCurrentSong,
      playingNext: playingNext == freezed
          ? _value.playingNext
          : playingNext // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStationQueue,
      songHistory: songHistory == freezed
          ? _value.songHistory
          : songHistory // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingSongHistory>,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      cache: cache == freezed
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as cacheFrom?,
    ));
  }

  @override
  $AzuraApiNowPlayingStationCopyWith<$Res> get station {
    return $AzuraApiNowPlayingStationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value));
    });
  }

  @override
  $AzuraApiNowPlayingListenersCopyWith<$Res> get listeners {
    return $AzuraApiNowPlayingListenersCopyWith<$Res>(_value.listeners,
        (value) {
      return _then(_value.copyWith(listeners: value));
    });
  }

  @override
  $AzuraApiNowPlayingLiveCopyWith<$Res> get live {
    return $AzuraApiNowPlayingLiveCopyWith<$Res>(_value.live, (value) {
      return _then(_value.copyWith(live: value));
    });
  }

  @override
  $AzuraApiNowPlayingCurrentSongCopyWith<$Res> get nowPlaying {
    return $AzuraApiNowPlayingCurrentSongCopyWith<$Res>(_value.nowPlaying,
        (value) {
      return _then(_value.copyWith(nowPlaying: value));
    });
  }

  @override
  $AzuraApiNowPlayingStationQueueCopyWith<$Res> get playingNext {
    return $AzuraApiNowPlayingStationQueueCopyWith<$Res>(_value.playingNext,
        (value) {
      return _then(_value.copyWith(playingNext: value));
    });
  }
}

/// @nodoc
abstract class _$AzuraApiNowPlayingCopyWith<$Res>
    implements $AzuraApiNowPlayingCopyWith<$Res> {
  factory _$AzuraApiNowPlayingCopyWith(
          _AzuraApiNowPlaying value, $Res Function(_AzuraApiNowPlaying) then) =
      __$AzuraApiNowPlayingCopyWithImpl<$Res>;
  @override
  $Res call(
      {AzuraApiNowPlayingStation station,
      AzuraApiNowPlayingListeners listeners,
      AzuraApiNowPlayingLive live,
      @JsonKey(name: 'now_playing')
          AzuraApiNowPlayingCurrentSong nowPlaying,
      @JsonKey(name: 'playing_next')
          AzuraApiNowPlayingStationQueue playingNext,
      @JsonKey(name: 'song_history')
          List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online')
          bool isOnline,
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
class __$AzuraApiNowPlayingCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingCopyWithImpl<$Res>
    implements _$AzuraApiNowPlayingCopyWith<$Res> {
  __$AzuraApiNowPlayingCopyWithImpl(
      _AzuraApiNowPlaying _value, $Res Function(_AzuraApiNowPlaying) _then)
      : super(_value, (v) => _then(v as _AzuraApiNowPlaying));

  @override
  _AzuraApiNowPlaying get _value => super._value as _AzuraApiNowPlaying;

  @override
  $Res call({
    Object? station = freezed,
    Object? listeners = freezed,
    Object? live = freezed,
    Object? nowPlaying = freezed,
    Object? playingNext = freezed,
    Object? songHistory = freezed,
    Object? isOnline = freezed,
    Object? cache = freezed,
  }) {
    return _then(_AzuraApiNowPlaying(
      station: station == freezed
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStation,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingListeners,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingLive,
      nowPlaying: nowPlaying == freezed
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingCurrentSong,
      playingNext: playingNext == freezed
          ? _value.playingNext
          : playingNext // ignore: cast_nullable_to_non_nullable
              as AzuraApiNowPlayingStationQueue,
      songHistory: songHistory == freezed
          ? _value.songHistory
          : songHistory // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingSongHistory>,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      cache: cache == freezed
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as cacheFrom?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AzuraApiNowPlaying implements _AzuraApiNowPlaying {
  const _$_AzuraApiNowPlaying(
      {required this.station,
      required this.listeners,
      required this.live,
      @JsonKey(name: 'now_playing')
          required this.nowPlaying,
      @JsonKey(name: 'playing_next')
          required this.playingNext,
      @JsonKey(name: 'song_history')
          required final List<AzuraApiNowPlayingSongHistory> songHistory,
      @JsonKey(name: 'is_online')
          required this.isOnline,
      this.cache})
      : _songHistory = songHistory;

  factory _$_AzuraApiNowPlaying.fromJson(Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingFromJson(json);

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
  @JsonKey(name: 'song_history')
  final List<AzuraApiNowPlayingSongHistory> _songHistory;
  @override
  @JsonKey(name: 'song_history')
  List<AzuraApiNowPlayingSongHistory> get songHistory {
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiNowPlaying &&
            const DeepCollectionEquality().equals(other.station, station) &&
            const DeepCollectionEquality().equals(other.listeners, listeners) &&
            const DeepCollectionEquality().equals(other.live, live) &&
            const DeepCollectionEquality()
                .equals(other.nowPlaying, nowPlaying) &&
            const DeepCollectionEquality()
                .equals(other.playingNext, playingNext) &&
            const DeepCollectionEquality()
                .equals(other.songHistory, songHistory) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.cache, cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(station),
      const DeepCollectionEquality().hash(listeners),
      const DeepCollectionEquality().hash(live),
      const DeepCollectionEquality().hash(nowPlaying),
      const DeepCollectionEquality().hash(playingNext),
      const DeepCollectionEquality().hash(songHistory),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(cache));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiNowPlayingCopyWith<_AzuraApiNowPlaying> get copyWith =>
      __$AzuraApiNowPlayingCopyWithImpl<_AzuraApiNowPlaying>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingToJson(this);
  }
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
      @JsonKey(name: 'is_online')
          required final bool isOnline,
      final cacheFrom? cache}) = _$_AzuraApiNowPlaying;

  factory _AzuraApiNowPlaying.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlaying.fromJson;

  @override
  AzuraApiNowPlayingStation get station => throw _privateConstructorUsedError;
  @override
  AzuraApiNowPlayingListeners get listeners =>
      throw _privateConstructorUsedError;
  @override
  AzuraApiNowPlayingLive get live => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'now_playing')
  AzuraApiNowPlayingCurrentSong get nowPlaying =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'playing_next')
  AzuraApiNowPlayingStationQueue get playingNext =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'song_history')
  List<AzuraApiNowPlayingSongHistory> get songHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;
  @override
  cacheFrom? get cache => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiNowPlayingCopyWith<_AzuraApiNowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}
