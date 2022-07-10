// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azura_api_now_playing_live.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzuraApiNowPlayingLive _$AzuraApiNowPlayingLiveFromJson(
    Map<String, dynamic> json) {
  return _AzuraApiNowPlayingLive.fromJson(json);
}

/// @nodoc
mixin _$AzuraApiNowPlayingLive {
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'streamer_name')
  String get streamerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcast_start')
  int? get broadcastStart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzuraApiNowPlayingLiveCopyWith<AzuraApiNowPlayingLive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzuraApiNowPlayingLiveCopyWith<$Res> {
  factory $AzuraApiNowPlayingLiveCopyWith(AzuraApiNowPlayingLive value,
          $Res Function(AzuraApiNowPlayingLive) then) =
      _$AzuraApiNowPlayingLiveCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'streamer_name') String streamerName,
      @JsonKey(name: 'broadcast_start') int? broadcastStart});
}

/// @nodoc
class _$AzuraApiNowPlayingLiveCopyWithImpl<$Res>
    implements $AzuraApiNowPlayingLiveCopyWith<$Res> {
  _$AzuraApiNowPlayingLiveCopyWithImpl(this._value, this._then);

  final AzuraApiNowPlayingLive _value;
  // ignore: unused_field
  final $Res Function(AzuraApiNowPlayingLive) _then;

  @override
  $Res call({
    Object? isLive = freezed,
    Object? streamerName = freezed,
    Object? broadcastStart = freezed,
  }) {
    return _then(_value.copyWith(
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      streamerName: streamerName == freezed
          ? _value.streamerName
          : streamerName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastStart: broadcastStart == freezed
          ? _value.broadcastStart
          : broadcastStart // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_AzuraApiNowPlayingLiveCopyWith<$Res>
    implements $AzuraApiNowPlayingLiveCopyWith<$Res> {
  factory _$$_AzuraApiNowPlayingLiveCopyWith(_$_AzuraApiNowPlayingLive value,
          $Res Function(_$_AzuraApiNowPlayingLive) then) =
      __$$_AzuraApiNowPlayingLiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'streamer_name') String streamerName,
      @JsonKey(name: 'broadcast_start') int? broadcastStart});
}

/// @nodoc
class __$$_AzuraApiNowPlayingLiveCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingLiveCopyWithImpl<$Res>
    implements _$$_AzuraApiNowPlayingLiveCopyWith<$Res> {
  __$$_AzuraApiNowPlayingLiveCopyWithImpl(_$_AzuraApiNowPlayingLive _value,
      $Res Function(_$_AzuraApiNowPlayingLive) _then)
      : super(_value, (v) => _then(v as _$_AzuraApiNowPlayingLive));

  @override
  _$_AzuraApiNowPlayingLive get _value =>
      super._value as _$_AzuraApiNowPlayingLive;

  @override
  $Res call({
    Object? isLive = freezed,
    Object? streamerName = freezed,
    Object? broadcastStart = freezed,
  }) {
    return _then(_$_AzuraApiNowPlayingLive(
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      streamerName: streamerName == freezed
          ? _value.streamerName
          : streamerName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastStart: broadcastStart == freezed
          ? _value.broadcastStart
          : broadcastStart // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzuraApiNowPlayingLive implements _AzuraApiNowPlayingLive {
  _$_AzuraApiNowPlayingLive(
      {@JsonKey(name: 'is_live') required this.isLive,
      @JsonKey(name: 'streamer_name') required this.streamerName,
      @JsonKey(name: 'broadcast_start') this.broadcastStart});

  factory _$_AzuraApiNowPlayingLive.fromJson(Map<String, dynamic> json) =>
      _$$_AzuraApiNowPlayingLiveFromJson(json);

  @override
  @JsonKey(name: 'is_live')
  final bool isLive;
  @override
  @JsonKey(name: 'streamer_name')
  final String streamerName;
  @override
  @JsonKey(name: 'broadcast_start')
  final int? broadcastStart;

  @override
  String toString() {
    return 'AzuraApiNowPlayingLive(isLive: $isLive, streamerName: $streamerName, broadcastStart: $broadcastStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AzuraApiNowPlayingLive &&
            const DeepCollectionEquality().equals(other.isLive, isLive) &&
            const DeepCollectionEquality()
                .equals(other.streamerName, streamerName) &&
            const DeepCollectionEquality()
                .equals(other.broadcastStart, broadcastStart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLive),
      const DeepCollectionEquality().hash(streamerName),
      const DeepCollectionEquality().hash(broadcastStart));

  @JsonKey(ignore: true)
  @override
  _$$_AzuraApiNowPlayingLiveCopyWith<_$_AzuraApiNowPlayingLive> get copyWith =>
      __$$_AzuraApiNowPlayingLiveCopyWithImpl<_$_AzuraApiNowPlayingLive>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzuraApiNowPlayingLiveToJson(this);
  }
}

abstract class _AzuraApiNowPlayingLive implements AzuraApiNowPlayingLive {
  factory _AzuraApiNowPlayingLive(
          {@JsonKey(name: 'is_live') required final bool isLive,
          @JsonKey(name: 'streamer_name') required final String streamerName,
          @JsonKey(name: 'broadcast_start') final int? broadcastStart}) =
      _$_AzuraApiNowPlayingLive;

  factory _AzuraApiNowPlayingLive.fromJson(Map<String, dynamic> json) =
      _$_AzuraApiNowPlayingLive.fromJson;

  @override
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'streamer_name')
  String get streamerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'broadcast_start')
  int? get broadcastStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AzuraApiNowPlayingLiveCopyWith<_$_AzuraApiNowPlayingLive> get copyWith =>
      throw _privateConstructorUsedError;
}
