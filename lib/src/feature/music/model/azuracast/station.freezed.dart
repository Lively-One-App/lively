// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Station {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get listenUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res>;
  $Res call({int id, String name, String description, String listenUrl});
}

/// @nodoc
class _$StationCopyWithImpl<$Res> implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  final Station _value;
  // ignore: unused_field
  final $Res Function(Station) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? listenUrl = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: listenUrl == freezed
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$_StationCopyWith(
          _$_Station value, $Res Function(_$_Station) then) =
      __$$_StationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String description, String listenUrl});
}

/// @nodoc
class __$$_StationCopyWithImpl<$Res> extends _$StationCopyWithImpl<$Res>
    implements _$$_StationCopyWith<$Res> {
  __$$_StationCopyWithImpl(_$_Station _value, $Res Function(_$_Station) _then)
      : super(_value, (v) => _then(v as _$_Station));

  @override
  _$_Station get _value => super._value as _$_Station;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? listenUrl = freezed,
  }) {
    return _then(_$_Station(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      listenUrl: listenUrl == freezed
          ? _value.listenUrl
          : listenUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Station implements _Station {
  const _$_Station(
      {required this.id,
      required this.name,
      required this.description,
      required this.listenUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String listenUrl;

  @override
  String toString() {
    return 'Station(id: $id, name: $name, description: $description, listenUrl: $listenUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Station &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.listenUrl, listenUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(listenUrl));

  @JsonKey(ignore: true)
  @override
  _$$_StationCopyWith<_$_Station> get copyWith =>
      __$$_StationCopyWithImpl<_$_Station>(this, _$identity);
}

abstract class _Station implements Station {
  const factory _Station(
      {required final int id,
      required final String name,
      required final String description,
      required final String listenUrl}) = _$_Station;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get listenUrl;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
