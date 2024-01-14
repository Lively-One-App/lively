// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call({int likes});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
          _$CityDataImpl value, $Res Function(_$CityDataImpl) then) =
      __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int likes});
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
      _$CityDataImpl _value, $Res Function(_$CityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
  }) {
    return _then(_$CityDataImpl(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDataImpl implements _CityData {
  const _$CityDataImpl({required this.likes});

  factory _$CityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDataImplFromJson(json);

  @override
  final int likes;

  @override
  String toString() {
    return 'CityData(likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDataImplToJson(
      this,
    );
  }
}

abstract class _CityData implements CityData {
  const factory _CityData({required final int likes}) = _$CityDataImpl;

  factory _CityData.fromJson(Map<String, dynamic> json) =
      _$CityDataImpl.fromJson;

  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
