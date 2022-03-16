// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingStation _$AzuraApiNowPlayingStationFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingStation.fromJson(json);
}

/// @nodoc
class _$AzuraApiNowPlayingStationTearOff {
  const _$AzuraApiNowPlayingStationTearOff();

  _AzuraApiNowPlayingStation call(
      {required int id,
      required String name,
      required String shortcode,
      required String description,
      required String frontend,
      required String backend,
      @JsonKey(name: 'listen_url') required String listenUrl,
      String? url,
      @JsonKey(name: 'public_player_url') required String publicPlayerUrl,
      @JsonKey(name: 'playlist_pls_url') required String playlistPlsUrl,
      @JsonKey(name: 'playlist_m3u_url') required String playlistM3uUrl,
      @JsonKey(name: 'is_public') required bool isPublic,
      required List<AzuraApiNowPlayingStationMount> mounts,
      required List<AzuraApiNowPlayingStationRemote> remotes}) {
    return _AzuraApiNowPlayingStation(
      id: id,
      name: name,
      shortcode: shortcode,
      description: description,
      frontend: frontend,
      backend: backend,
      listenUrl: listenUrl,
      url: url,
      publicPlayerUrl: publicPlayerUrl,
      playlistPlsUrl: playlistPlsUrl,
      playlistM3uUrl: playlistM3uUrl,
      isPublic: isPublic,
      mounts: mounts,
      remotes: remotes,
    );
  }

  AzuraApiNowPlayingStation fromJson(Map<String, Object?> json) {
    return AzuraApiNowPlayingStation.fromJson(json);
  }
}

/// @nodoc
const $AzuraApiNowPlayingStation = _$AzuraApiNowPlayingStationTearOff();

/// @nodoc
mixin _$AzuraApiNowPlayingStation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortcode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get frontend => throw _privateConstructorUsedError;
  String get backend => throw _privateConstructorUsedError;
  @JsonKey(name: 'listen_url')
  String get listenUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_player_url')
  String get publicPlayerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlist_pls_url')
  String get playlistPlsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlist_m3u_url')
  String get playlistM3uUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  List<AzuraApiNowPlayingStationMount> get mounts =>
      throw _privateConstructorUsedError;
  List<AzuraApiNowPlayingStationRemote> get remotes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingStationCopyWith<AzuraApiNowPlayingStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingStationCopyWith<$Res> {
  factory $AzuraApiNowPlayingStationCopyWith(AzuraApiNowPlayingStation value,
          $Res Function(AzuraApiNowPlayingStation) then) =
      _$AzuraApiNowPlayingStationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String shortcode,
      String description,
      String frontend,
      String backend,
      @JsonKey(name: 'listen_url') String listenUrl,
      String? url,
      @JsonKey(name: 'public_player_url') String publicPlayerUrl,
      @JsonKey(name: 'playlist_pls_url') String playlistPlsUrl,
      @JsonKey(name: 'playlist_m3u_url') String playlistM3uUrl,
      @JsonKey(name: 'is_public') bool isPublic,
      List<AzuraApiNowPlayingStationMount> mounts,
      List<AzuraApiNowPlayingStationRemote> remotes});
}

/// @nodoc
class _$AzuraApiNowPlayingStationCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingStationCopyWith<$Res> {
  _$AzuraApiNowPlayingStationCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingStation _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingStation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortcode = freezed,
    Object? description = freezed,
    Object? frontend = freezed,
    Object? backend = freezed,
    Object? listenUrl = freezed,
    Object? url = freezed,
    Object? publicPlayerUrl = freezed,
    Object? playlistPlsUrl = freezed,
    Object? playlistM3uUrl = freezed,
    Object? isPublic = freezed,
    Object? mounts = freezed,
    Object? remotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortcode: shortcode == freezed
          ? _value.shortcode
          : shortcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontend: frontend == freezed
          ? _value.frontend
          : frontend // ignore: cast_nullable_to_non_nullable
              as String,
      backend: backend == freezed
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: listenUrl == freezed
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      publicPlayerUrl: publicPlayerUrl == freezed
          ? _value.publicPlayerUrl
          : publicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistPlsUrl: playlistPlsUrl == freezed
          ? _value.playlistPlsUrl
          : playlistPlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistM3uUrl: playlistM3uUrl == freezed
          ? _value.playlistM3uUrl
          : playlistM3uUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      mounts: mounts == freezed
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationMount>,
      remotes: remotes == freezed
          ? _value.remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationRemote>,
    ));
  }
}

/// @nodoc
abstract class _$AzuraApiNowPlayingStationCopyWith<$Res>
    implements $AzuraApiNowPlayingStationCopyWith<$Res> {
  factory _$AzuraApiNowPlayingStationCopyWith(_AzuraApiNowPlayingStation value,
          $Res Function(_AzuraApiNowPlayingStation) then) =
      __$AzuraApiNowPlayingStationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String shortcode,
      String description,
      String frontend,
      String backend,
      @JsonKey(name: 'listen_url') String listenUrl,
      String? url,
      @JsonKey(name: 'public_player_url') String publicPlayerUrl,
      @JsonKey(name: 'playlist_pls_url') String playlistPlsUrl,
      @JsonKey(name: 'playlist_m3u_url') String playlistM3uUrl,
      @JsonKey(name: 'is_public') bool isPublic,
      List<AzuraApiNowPlayingStationMount> mounts,
      List<AzuraApiNowPlayingStationRemote> remotes});
}

/// @nodoc
class __$AzuraApiNowPlayingStationCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingStationCopyWithImpl<$Res>
    implements _$AzuraApiNowPlayingStationCopyWith<$Res> {
  __$AzuraApiNowPlayingStationCopyWithImpl(_AzuraApiNowPlayingStation _value,
      $Res Function(_AzuraApiNowPlayingStation) _then)
      : super(_value, (v) => _then(v as _AzuraApiNowPlayingStation));

  @override
  _AzuraApiNowPlayingStation get _value =>
      super._value as _AzuraApiNowPlayingStation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortcode = freezed,
    Object? description = freezed,
    Object? frontend = freezed,
    Object? backend = freezed,
    Object? listenUrl = freezed,
    Object? url = freezed,
    Object? publicPlayerUrl = freezed,
    Object? playlistPlsUrl = freezed,
    Object? playlistM3uUrl = freezed,
    Object? isPublic = freezed,
    Object? mounts = freezed,
    Object? remotes = freezed,
  }) {
    return _then(_AzuraApiNowPlayingStation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortcode: shortcode == freezed
          ? _value.shortcode
          : shortcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontend: frontend == freezed
          ? _value.frontend
          : frontend // ignore: cast_nullable_to_non_nullable
              as String,
      backend: backend == freezed
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: listenUrl == freezed
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      publicPlayerUrl: publicPlayerUrl == freezed
          ? _value.publicPlayerUrl
          : publicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistPlsUrl: playlistPlsUrl == freezed
          ? _value.playlistPlsUrl
          : playlistPlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistM3uUrl: playlistM3uUrl == freezed
          ? _value.playlistM3uUrl
          : playlistM3uUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      mounts: mounts == freezed
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationMount>,
      remotes: remotes == freezed
          ? _value.remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationRemote>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AzuraApiNowPlayingStation implements _AzuraApiNowPlayingStation {
  _$_AzuraApiNowPlayingStation(
      {required this.id,
      required this.name,
      required this.shortcode,
      required this.description,
      required this.frontend,
      required this.backend,
      @JsonKey(name: 'listen_url') required this.listenUrl,
      this.url,
      @JsonKey(name: 'public_player_url') required this.publicPlayerUrl,
      @JsonKey(name: 'playlist_pls_url') required this.playlistPlsUrl,
      @JsonKey(name: 'playlist_m3u_url') required this.playlistM3uUrl,
      @JsonKey(name: 'is_public') required this.isPublic,
      required this.mounts,
      required this.remotes});

  factory _$_AzuraApiNowPlayingStation.fromJson(Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingStationFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String shortcode;
  @override
  final String description;
  @override
  final String frontend;
  @override
  final String backend;
  @override
  @JsonKey(name: 'listen_url')
  final String listenUrl;
  @override
  final String? url;
  @override
  @JsonKey(name: 'public_player_url')
  final String publicPlayerUrl;
  @override
  @JsonKey(name: 'playlist_pls_url')
  final String playlistPlsUrl;
  @override
  @JsonKey(name: 'playlist_m3u_url')
  final String playlistM3uUrl;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  final List<AzuraApiNowPlayingStationMount> mounts;
  @override
  final List<AzuraApiNowPlayingStationRemote> remotes;

  @override
  String toString() {
    return 'AzuraApiNowPlayingStation(id: $id, name: $name, shortcode: $shortcode, description: $description, frontend: $frontend, backend: $backend, listenUrl: $listenUrl, url: $url, publicPlayerUrl: $publicPlayerUrl, playlistPlsUrl: $playlistPlsUrl, playlistM3uUrl: $playlistM3uUrl, isPublic: $isPublic, mounts: $mounts, remotes: $remotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiNowPlayingStation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.shortcode, shortcode) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.frontend, frontend) &&
            const DeepCollectionEquality().equals(other.backend, backend) &&
            const DeepCollectionEquality().equals(other.listenUrl, listenUrl) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.publicPlayerUrl, publicPlayerUrl) &&
            const DeepCollectionEquality()
                .equals(other.playlistPlsUrl, playlistPlsUrl) &&
            const DeepCollectionEquality()
                .equals(other.playlistM3uUrl, playlistM3uUrl) &&
            const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
            const DeepCollectionEquality().equals(other.mounts, mounts) &&
            const DeepCollectionEquality().equals(other.remotes, remotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(shortcode),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(frontend),
      const DeepCollectionEquality().hash(backend),
      const DeepCollectionEquality().hash(listenUrl),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(publicPlayerUrl),
      const DeepCollectionEquality().hash(playlistPlsUrl),
      const DeepCollectionEquality().hash(playlistM3uUrl),
      const DeepCollectionEquality().hash(isPublic),
      const DeepCollectionEquality().hash(mounts),
      const DeepCollectionEquality().hash(remotes));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiNowPlayingStationCopyWith<_AzuraApiNowPlayingStation>
      get copyWith =>
          __$AzuraApiNowPlayingStationCopyWithImpl<_AzuraApiNowPlayingStation>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingStationToJson(this);
  }
}

abstract class _AzuraApiNowPlayingStation implements AzuraApiNowPlayingStation {
  factory _AzuraApiNowPlayingStation(
          {required int id,
          required String name,
          required String shortcode,
          required String description,
          required String frontend,
          required String backend,
          @JsonKey(name: 'listen_url') required String listenUrl,
          String? url,
          @JsonKey(name: 'public_player_url') required String publicPlayerUrl,
          @JsonKey(name: 'playlist_pls_url') required String playlistPlsUrl,
          @JsonKey(name: 'playlist_m3u_url') required String playlistM3uUrl,
          @JsonKey(name: 'is_public') required bool isPublic,
          required List<AzuraApiNowPlayingStationMount> mounts,
          required List<AzuraApiNowPlayingStationRemote> remotes}) =
      _$_AzuraApiNowPlayingStation;

  factory _AzuraApiNowPlayingStation.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingStation.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get shortcode;
  @override
  String get description;
  @override
  String get frontend;
  @override
  String get backend;
  @override
  @JsonKey(name: 'listen_url')
  String get listenUrl;
  @override
  String? get url;
  @override
  @JsonKey(name: 'public_player_url')
  String get publicPlayerUrl;
  @override
  @JsonKey(name: 'playlist_pls_url')
  String get playlistPlsUrl;
  @override
  @JsonKey(name: 'playlist_m3u_url')
  String get playlistM3uUrl;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  List<AzuraApiNowPlayingStationMount> get mounts;
  @override
  List<AzuraApiNowPlayingStationRemote> get remotes;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiNowPlayingStationCopyWith<_AzuraApiNowPlayingStation>
      get copyWith => throw _privateConstructorUsedError;
}
