// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:lively/src/feature/music/model/azura_model/song.dart';

class NowPlaying {
  final int shId;
  final int playedAt;
  final int duration;
  final String playlist;
  final String streamer;
  final bool isRequest;
  final Song song;
  final int elapsed;
  final int remaining;

  NowPlaying(
      {required this.shId,
      required this.playedAt,
      required this.duration,
      required this.playlist,
      required this.streamer,
      required this.isRequest,
      required this.song,
      required this.elapsed,
      required this.remaining});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shId': shId,
      'playedAt': playedAt,
      'duration': duration,
      'playlist': playlist,
      'streamer': streamer,
      'isRequest': isRequest,
      'song': song.toMap(),
      'elapsed': elapsed,
      'remaining': remaining,
    };
  }

  factory NowPlaying.fromMap(Map<String, dynamic> map) {
    return NowPlaying(
      shId: map['sh_id'] as int,
      playedAt: map['played_at'] as int,
      duration: map['duration'] as int,
      playlist: map['playlist'] as String,
      streamer: map['streamer'] as String,
      isRequest: map['is_request'] as bool,
      song: Song.fromMap(map['song'] as Map<String, dynamic>),
      elapsed: map['elapsed'] as int,
      remaining: map['remaining'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory NowPlaying.fromJson(String source) =>
      NowPlaying.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant NowPlaying other) {
    if (identical(this, other)) return true;
  
    return 
      other.shId == shId &&
      other.playedAt == playedAt &&
      other.duration == duration &&
      other.playlist == playlist &&
      other.streamer == streamer &&
      other.isRequest == isRequest &&
      other.song == song &&
      other.elapsed == elapsed &&
      other.remaining == remaining;
  }

  @override
  int get hashCode {
    return shId.hashCode ^
      playedAt.hashCode ^
      duration.hashCode ^
      playlist.hashCode ^
      streamer.hashCode ^
      isRequest.hashCode ^
      song.hashCode ^
      elapsed.hashCode ^
      remaining.hashCode;
  }
}
