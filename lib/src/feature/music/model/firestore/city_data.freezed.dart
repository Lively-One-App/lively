// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return _CityData.fromJson(json);
}

/// @nodoc
mixin _$CityData {
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res>;
  $Res call({int likes});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res> implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  final CityData _value;
  // ignore: unused_field
  final $Res Function(CityData) _then;

  @override
  $Res call({
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CityDataCopyWith<$Res> implements $CityDataCopyWith<$Res> {
  factory _$CityDataCopyWith(_CityData value, $Res Function(_CityData) then) =
      __$CityDataCopyWithImpl<$Res>;
  @override
  $Res call({int likes});
}

/// @nodoc
class __$CityDataCopyWithImpl<$Res> extends _$CityDataCopyWithImpl<$Res>
    implements _$CityDataCopyWith<$Res> {
  __$CityDataCopyWithImpl(_CityData _value, $Res Function(_CityData) _then)
      : super(_value, (v) => _then(v as _CityData));

  @override
  _CityData get _value => super._value as _CityData;

  @override
  $Res call({
    Object? likes = freezed,
  }) {
    return _then(_CityData(
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityData implements _CityData {
  const _$_CityData({required this.likes});

  factory _$_CityData.fromJson(Map<String, dynamic> json) =>
      _$$_CityDataFromJson(json);

  @override
  final int likes;

  @override
  String toString() {
    return 'CityData(likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityData &&
            const DeepCollectionEquality().equals(other.likes, likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(likes));

  @JsonKey(ignore: true)
  @override
  _$CityDataCopyWith<_CityData> get copyWith =>
      __$CityDataCopyWithImpl<_CityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityDataToJson(this);
  }
}

abstract class _CityData implements CityData {
  const factory _CityData({required final int likes}) = _$_CityData;

  factory _CityData.fromJson(Map<String, dynamic> json) = _$_CityData.fromJson;

  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityDataCopyWith<_CityData> get copyWith =>
      throw _privateConstructorUsedError;
}
