// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:lively/src/feature/music/model/azura_model/listeners.dart';
import 'package:lively/src/feature/music/model/azura_model/now_playing.dart';
import 'package:lively/src/feature/music/model/azura_model/station.dart';

class AzuraApiModel {
  final Station station;
  final Listeners listeners;
  final NowPlaying nowPlaying;
  final bool isOnline;
  final String cache;

  AzuraApiModel(
      {required this.station,
      required this.listeners,
      required this.nowPlaying,
      required this.isOnline,
      required this.cache});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'station': station.toMap(),
      'listeners': listeners.toMap(),
      'nowPlaying': nowPlaying.toMap(),
      'isOnline': isOnline,
      'cache': cache,
    };
  }

  factory AzuraApiModel.fromMap(Map<String, dynamic> map) {
    return AzuraApiModel(
      station: Station.fromMap(map['station'] as Map<String, dynamic>),
      listeners: Listeners.fromMap(map['listeners'] as Map<String, dynamic>),
      nowPlaying: NowPlaying.fromMap(map['now_playing'] as Map<String, dynamic>),
      isOnline: map['is_online'] as bool,
      cache: map['cache'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AzuraApiModel.fromJson(String source) =>
      AzuraApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant AzuraApiModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.station == station &&
      other.listeners == listeners &&
      other.nowPlaying == nowPlaying &&
      other.isOnline == isOnline &&
      other.cache == cache;
  }

  @override
  int get hashCode {
    return station.hashCode ^
      listeners.hashCode ^
      nowPlaying.hashCode ^
      isOnline.hashCode ^
      cache.hashCode;
  }
}
