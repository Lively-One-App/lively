// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$AzuraApiSongCopyWithImpl<$Res, AzuraApiSong>;
  @useResult
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
class _$AzuraApiSongCopyWithImpl<$Res, $Val extends AzuraApiSong>
    implements $AzuraApiSongCopyWith<$Res> {
  _$AzuraApiSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? artist = null,
    Object? title = null,
    Object? album = null,
    Object? genre = null,
    Object? lyrics = null,
    Object? art = null,
    Object? customFields = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      lyrics: null == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String,
      art: null == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: null == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzuraApiSongImplCopyWith<$Res>
    implements $AzuraApiSongCopyWith<$Res> {
  factory _$$AzuraApiSongImplCopyWith(
          _$AzuraApiSongImpl value, $Res Function(_$AzuraApiSongImpl) then) =
      __$$AzuraApiSongImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$AzuraApiSongImplCopyWithImpl<$Res>
    extends _$AzuraApiSongCopyWithImpl<$Res, _$AzuraApiSongImpl>
    implements _$$AzuraApiSongImplCopyWith<$Res> {
  __$$AzuraApiSongImplCopyWithImpl(
      _$AzuraApiSongImpl _value, $Res Function(_$AzuraApiSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? artist = null,
    Object? title = null,
    Object? album = null,
    Object? genre = null,
    Object? lyrics = null,
    Object? art = null,
    Object? customFields = null,
  }) {
    return _then(_$AzuraApiSongImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      lyrics: null == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String,
      art: null == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String,
      customFields: null == customFields
          ? _value._customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AzuraApiSongImpl implements _AzuraApiSong {
  _$AzuraApiSongImpl(
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

  factory _$AzuraApiSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$AzuraApiSongImplFromJson(json);

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
  final List<String> _customFields;
  @override
  @JsonKey(name: 'custom_fields')
  List<String> get customFields {
    if (_customFields is EqualUnmodifiableListView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customFields);
  }

  @override
  String toString() {
    return 'AzuraApiSong(id: $id, text: $text, artist: $artist, title: $title, album: $album, genre: $genre, lyrics: $lyrics, art: $art, customFields: $customFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiSongImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.lyrics, lyrics) || other.lyrics == lyrics) &&
            (identical(other.art, art) || other.art == art) &&
            const DeepCollectionEquality()
                .equals(other._customFields, _customFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, artist, title, album,
      genre, lyrics, art, const DeepCollectionEquality().hash(_customFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiSongImplCopyWith<_$AzuraApiSongImpl> get copyWith =>
      __$$AzuraApiSongImplCopyWithImpl<_$AzuraApiSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiSongImplToJson(
      this,
    );
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
      required final List<String> customFields}) = _$AzuraApiSongImpl;

  factory _AzuraApiSong.fromJson(Map<String, dynamic> json) =
      _$AzuraApiSongImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get artist;
  @override
  String get title;
  @override
  String get album;
  @override
  String get genre;
  @override
  String get lyrics;
  @override
  String get art;
  @override
  @JsonKey(name: 'custom_fields')
  List<String> get customFields;
  @override
  @JsonKey(ignore: true)
  _$$AzuraApiSongImplCopyWith<_$AzuraApiSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
