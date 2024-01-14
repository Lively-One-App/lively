// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azura_api_now_playing_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingStation _$AzuraApiNowPlayingStationFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingStation.fromJson(json);
}

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
      _$AzuraApiNowPlayingStationCopyWithImpl<$Res, AzuraApiNowPlayingStation>;
  @useResult
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
class _$AzuraApiNowPlayingStationCopyWithImpl<$Res,
        $Val extends AzuraApiNowPlayingStation>
    implements $AzuraApiNowPlayingStationCopyWith<$Res> {
  _$AzuraApiNowPlayingStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortcode = null,
    Object? description = null,
    Object? frontend = null,
    Object? backend = null,
    Object? listenUrl = null,
    Object? url = freezed,
    Object? publicPlayerUrl = null,
    Object? playlistPlsUrl = null,
    Object? playlistM3uUrl = null,
    Object? isPublic = null,
    Object? mounts = null,
    Object? remotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortcode: null == shortcode
          ? _value.shortcode
          : shortcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontend: null == frontend
          ? _value.frontend
          : frontend // ignore: cast_nullable_to_non_nullable
              as String,
      backend: null == backend
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: null == listenUrl
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      publicPlayerUrl: null == publicPlayerUrl
          ? _value.publicPlayerUrl
          : publicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistPlsUrl: null == playlistPlsUrl
          ? _value.playlistPlsUrl
          : playlistPlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistM3uUrl: null == playlistM3uUrl
          ? _value.playlistM3uUrl
          : playlistM3uUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      mounts: null == mounts
          ? _value.mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationMount>,
      remotes: null == remotes
          ? _value.remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationRemote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzuraApiNowPlayingStationImplCopyWith<$Res>
    implements $AzuraApiNowPlayingStationCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingStationImplCopyWith(
          _$AzuraApiNowPlayingStationImpl value,
          $Res Function(_$AzuraApiNowPlayingStationImpl) then) =
      __$$AzuraApiNowPlayingStationImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$AzuraApiNowPlayingStationImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingStationCopyWithImpl<$Res,
        _$AzuraApiNowPlayingStationImpl>
    implements _$$AzuraApiNowPlayingStationImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingStationImplCopyWithImpl(
      _$AzuraApiNowPlayingStationImpl _value,
      $Res Function(_$AzuraApiNowPlayingStationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortcode = null,
    Object? description = null,
    Object? frontend = null,
    Object? backend = null,
    Object? listenUrl = null,
    Object? url = freezed,
    Object? publicPlayerUrl = null,
    Object? playlistPlsUrl = null,
    Object? playlistM3uUrl = null,
    Object? isPublic = null,
    Object? mounts = null,
    Object? remotes = null,
  }) {
    return _then(_$AzuraApiNowPlayingStationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortcode: null == shortcode
          ? _value.shortcode
          : shortcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontend: null == frontend
          ? _value.frontend
          : frontend // ignore: cast_nullable_to_non_nullable
              as String,
      backend: null == backend
          ? _value.backend
          : backend // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: null == listenUrl
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      publicPlayerUrl: null == publicPlayerUrl
          ? _value.publicPlayerUrl
          : publicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistPlsUrl: null == playlistPlsUrl
          ? _value.playlistPlsUrl
          : playlistPlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playlistM3uUrl: null == playlistM3uUrl
          ? _value.playlistM3uUrl
          : playlistM3uUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      mounts: null == mounts
          ? _value._mounts
          : mounts // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationMount>,
      remotes: null == remotes
          ? _value._remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<AzuraApiNowPlayingStationRemote>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AzuraApiNowPlayingStationImpl implements _AzuraApiNowPlayingStation {
  _$AzuraApiNowPlayingStationImpl(
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
      required final List<AzuraApiNowPlayingStationMount> mounts,
      required final List<AzuraApiNowPlayingStationRemote> remotes})
      : _mounts = mounts,
        _remotes = remotes;

  factory _$AzuraApiNowPlayingStationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AzuraApiNowPlayingStationImplFromJson(json);

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
  final List<AzuraApiNowPlayingStationMount> _mounts;
  @override
  List<AzuraApiNowPlayingStationMount> get mounts {
    if (_mounts is EqualUnmodifiableListView) return _mounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mounts);
  }

  final List<AzuraApiNowPlayingStationRemote> _remotes;
  @override
  List<AzuraApiNowPlayingStationRemote> get remotes {
    if (_remotes is EqualUnmodifiableListView) return _remotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remotes);
  }

  @override
  String toString() {
    return 'AzuraApiNowPlayingStation(id: $id, name: $name, shortcode: $shortcode, description: $description, frontend: $frontend, backend: $backend, listenUrl: $listenUrl, url: $url, publicPlayerUrl: $publicPlayerUrl, playlistPlsUrl: $playlistPlsUrl, playlistM3uUrl: $playlistM3uUrl, isPublic: $isPublic, mounts: $mounts, remotes: $remotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingStationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortcode, shortcode) ||
                other.shortcode == shortcode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.frontend, frontend) ||
                other.frontend == frontend) &&
            (identical(other.backend, backend) || other.backend == backend) &&
            (identical(other.listenUrl, listenUrl) ||
                other.listenUrl == listenUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publicPlayerUrl, publicPlayerUrl) ||
                other.publicPlayerUrl == publicPlayerUrl) &&
            (identical(other.playlistPlsUrl, playlistPlsUrl) ||
                other.playlistPlsUrl == playlistPlsUrl) &&
            (identical(other.playlistM3uUrl, playlistM3uUrl) ||
                other.playlistM3uUrl == playlistM3uUrl) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._mounts, _mounts) &&
            const DeepCollectionEquality().equals(other._remotes, _remotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      shortcode,
      description,
      frontend,
      backend,
      listenUrl,
      url,
      publicPlayerUrl,
      playlistPlsUrl,
      playlistM3uUrl,
      isPublic,
      const DeepCollectionEquality().hash(_mounts),
      const DeepCollectionEquality().hash(_remotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingStationImplCopyWith<_$AzuraApiNowPlayingStationImpl>
      get copyWith => __$$AzuraApiNowPlayingStationImplCopyWithImpl<
          _$AzuraApiNowPlayingStationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiNowPlayingStationImplToJson(
      this,
    );
  }
}

abstract class _AzuraApiNowPlayingStation implements AzuraApiNowPlayingStation {
  factory _AzuraApiNowPlayingStation(
      {required final int id,
      required final String name,
      required final String shortcode,
      required final String description,
      required final String frontend,
      required final String backend,
      @JsonKey(name: 'listen_url') required final String listenUrl,
      final String? url,
      @JsonKey(name: 'public_player_url') required final String publicPlayerUrl,
      @JsonKey(name: 'playlist_pls_url') required final String playlistPlsUrl,
      @JsonKey(name: 'playlist_m3u_url') required final String playlistM3uUrl,
      @JsonKey(name: 'is_public') required final bool isPublic,
      required final List<AzuraApiNowPlayingStationMount> mounts,
      required final List<AzuraApiNowPlayingStationRemote>
          remotes}) = _$AzuraApiNowPlayingStationImpl;

  factory _AzuraApiNowPlayingStation.fromJson(Map<String, dynamic> json) =
      _$AzuraApiNowPlayingStationImpl.fromJson;

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
  _$$AzuraApiNowPlayingStationImplCopyWith<_$AzuraApiNowPlayingStationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
