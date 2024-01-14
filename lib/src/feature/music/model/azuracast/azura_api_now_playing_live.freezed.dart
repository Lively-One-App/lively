// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$AzuraApiNowPlayingLiveCopyWithImpl<$Res, AzuraApiNowPlayingLive>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'streamer_name') String streamerName,
      @JsonKey(name: 'broadcast_start') int? broadcastStart});
}

/// @nodoc
class _$AzuraApiNowPlayingLiveCopyWithImpl<$Res,
        $Val extends AzuraApiNowPlayingLive>
    implements $AzuraApiNowPlayingLiveCopyWith<$Res> {
  _$AzuraApiNowPlayingLiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLive = null,
    Object? streamerName = null,
    Object? broadcastStart = freezed,
  }) {
    return _then(_value.copyWith(
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      streamerName: null == streamerName
          ? _value.streamerName
          : streamerName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastStart: freezed == broadcastStart
          ? _value.broadcastStart
          : broadcastStart // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AzuraApiNowPlayingLiveImplCopyWith<$Res>
    implements $AzuraApiNowPlayingLiveCopyWith<$Res> {
  factory _$$AzuraApiNowPlayingLiveImplCopyWith(
          _$AzuraApiNowPlayingLiveImpl value,
          $Res Function(_$AzuraApiNowPlayingLiveImpl) then) =
      __$$AzuraApiNowPlayingLiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'streamer_name') String streamerName,
      @JsonKey(name: 'broadcast_start') int? broadcastStart});
}

/// @nodoc
class __$$AzuraApiNowPlayingLiveImplCopyWithImpl<$Res>
    extends _$AzuraApiNowPlayingLiveCopyWithImpl<$Res,
        _$AzuraApiNowPlayingLiveImpl>
    implements _$$AzuraApiNowPlayingLiveImplCopyWith<$Res> {
  __$$AzuraApiNowPlayingLiveImplCopyWithImpl(
      _$AzuraApiNowPlayingLiveImpl _value,
      $Res Function(_$AzuraApiNowPlayingLiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLive = null,
    Object? streamerName = null,
    Object? broadcastStart = freezed,
  }) {
    return _then(_$AzuraApiNowPlayingLiveImpl(
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      streamerName: null == streamerName
          ? _value.streamerName
          : streamerName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcastStart: freezed == broadcastStart
          ? _value.broadcastStart
          : broadcastStart // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AzuraApiNowPlayingLiveImpl implements _AzuraApiNowPlayingLive {
  _$AzuraApiNowPlayingLiveImpl(
      {@JsonKey(name: 'is_live') required this.isLive,
      @JsonKey(name: 'streamer_name') required this.streamerName,
      @JsonKey(name: 'broadcast_start') this.broadcastStart});

  factory _$AzuraApiNowPlayingLiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$AzuraApiNowPlayingLiveImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzuraApiNowPlayingLiveImpl &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.streamerName, streamerName) ||
                other.streamerName == streamerName) &&
            (identical(other.broadcastStart, broadcastStart) ||
                other.broadcastStart == broadcastStart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLive, streamerName, broadcastStart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AzuraApiNowPlayingLiveImplCopyWith<_$AzuraApiNowPlayingLiveImpl>
      get copyWith => __$$AzuraApiNowPlayingLiveImplCopyWithImpl<
          _$AzuraApiNowPlayingLiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AzuraApiNowPlayingLiveImplToJson(
      this,
    );
  }
}

abstract class _AzuraApiNowPlayingLive implements AzuraApiNowPlayingLive {
  factory _AzuraApiNowPlayingLive(
          {@JsonKey(name: 'is_live') required final bool isLive,
          @JsonKey(name: 'streamer_name') required final String streamerName,
          @JsonKey(name: 'broadcast_start') final int? broadcastStart}) =
      _$AzuraApiNowPlayingLiveImpl;

  factory _AzuraApiNowPlayingLive.fromJson(Map<String, dynamic> json) =
      _$AzuraApiNowPlayingLiveImpl.fromJson;

  @override
  @JsonKey(name: 'is_live')
  bool get isLive;
  @override
  @JsonKey(name: 'streamer_name')
  String get streamerName;
  @override
  @JsonKey(name: 'broadcast_start')
  int? get broadcastStart;
  @override
  @JsonKey(ignore: true)
  _$$AzuraApiNowPlayingLiveImplCopyWith<_$AzuraApiNowPlayingLiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}
