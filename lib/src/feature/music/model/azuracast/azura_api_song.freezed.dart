// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiSong _$AzuraApiSongFromJson(Map<String, dynamic> json) {
  return _AzuraApiSong.fromJson(json);
}

/// @nodoc
mixin _$AzuraApiSong {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get album => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get lyrics => throw _privateConstructorUsedError;
  String get art => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_fields')
  List<String> get customFields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiSongCopyWith<AzuraApiSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiSongCopyWith<$Res> {
  factory $AzuraApiSongCopyWith(
          AzuraApiSong value, $Res Function(AzuraApiSong) then) =
      _$AzuraApiSongCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      String artist,
      String title,
      String album,
      String genre,
      String lyrics,
      String art,
      @JsonKey(name: 'custom_fields') List<String> customFields});
}

/// @nodoc
class _$AzuraApiSongCopyWithImpl<$Res> implements $AzuraApiSongCopyWith<$Res> {
  _$AzuraApiSongCopyWithImpl(this._value, this._then);

  final AzuraApiSong _value;
  // ignore: unused_field
  final $Res Function(AzuraApiSong) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? artist = freezed,
    Object? title = freezed,
    Object? album = freezed,
    Object? genre = freezed,
    Object? lyrics = freezed,
    Object? art = freezed,
    Object? customFields = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      lyrics: lyrics == freezed
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String,
      art: art == freezed
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: customFields == freezed
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AzuraApiSongCopyWith<$Res>
    implements $AzuraApiSongCopyWith<$Res> {
  factory _$AzuraApiSongCopyWith(
          _AzuraApiSong value, $Res Function(_AzuraApiSong) then) =
      __$AzuraApiSongCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      String artist,
      String title,
      String album,
      String genre,
      String lyrics,
      String art,
      @JsonKey(name: 'custom_fields') List<String> customFields});
}

/// @nodoc
class __$AzuraApiSongCopyWithImpl<$Res> extends _$AzuraApiSongCopyWithImpl<$Res>
    implements _$AzuraApiSongCopyWith<$Res> {
  __$AzuraApiSongCopyWithImpl(
      _AzuraApiSong _value, $Res Function(_AzuraApiSong) _then)
      : super(_value, (v) => _then(v as _AzuraApiSong));

  @override
  _AzuraApiSong get _value => super._value as _AzuraApiSong;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? artist = freezed,
    Object? title = freezed,
    Object? album = freezed,
    Object? genre = freezed,
    Object? lyrics = freezed,
    Object? art = freezed,
    Object? customFields = freezed,
  }) {
    return _then(_AzuraApiSong(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      lyrics: lyrics == freezed
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String,
      art: art == freezed
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: customFields == freezed
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzuraApiSong implements _AzuraApiSong {
  _$_AzuraApiSong(
      {required this.id,
      required this.text,
      required this.artist,
      required this.title,
      required this.album,
      required this.genre,
      required this.lyrics,
      required this.art,
      @JsonKey(name: 'custom_fields') required final List<String> customFields})
      : _customFields = customFields;

  factory _$_AzuraApiSong.fromJson(Map<String, dynamic> json) =>
      _$$_AzuraApiSongFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String artist;
  @override
  final String title;
  @override
  final String album;
  @override
  final String genre;
  @override
  final String lyrics;
  @override
  final String art;
  @JsonKey(name: 'custom_fields')
  final List<String> _customFields;
  @override
  @JsonKey(name: 'custom_fields')
  List<String> get customFields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customFields);
  }

  @override
  String toString() {
    return 'AzuraApiSong(id: $id, text: $text, artist: $artist, title: $title, album: $album, genre: $genre, lyrics: $lyrics, art: $art, customFields: $customFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AzuraApiSong &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.album, album) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.lyrics, lyrics) &&
            const DeepCollectionEquality().equals(other.art, art) &&
            const DeepCollectionEquality()
                .equals(other.customFields, customFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(album),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(lyrics),
      const DeepCollectionEquality().hash(art),
      const DeepCollectionEquality().hash(customFields));

  @JsonKey(ignore: true)
  @override
  _$AzuraApiSongCopyWith<_AzuraApiSong> get copyWith =>
      __$AzuraApiSongCopyWithImpl<_AzuraApiSong>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiSongToJson(this);
  }
}

abstract class _AzuraApiSong implements AzuraApiSong {
  factory _AzuraApiSong(
      {required final String id,
      required final String text,
      required final String artist,
      required final String title,
      required final String album,
      required final String genre,
      required final String lyrics,
      required final String art,
      @JsonKey(name: 'custom_fields')
          required final List<String> customFields}) = _$_AzuraApiSong;

  factory _AzuraApiSong.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiSong.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get artist => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get album => throw _privateConstructorUsedError;
  @override
  String get genre => throw _privateConstructorUsedError;
  @override
  String get lyrics => throw _privateConstructorUsedError;
  @override
  String get art => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'custom_fields')
  List<String> get customFields => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AzuraApiSongCopyWith<_AzuraApiSong> get copyWith =>
      throw _privateConstructorUsedError;
}
