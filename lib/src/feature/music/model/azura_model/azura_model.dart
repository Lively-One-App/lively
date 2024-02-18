import 'dart:convert';

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
}

class Station {
  final int id;
  final String name;
  final String shortcode;
  final String description;
  final String frontend;
  final String backend;
  final String listenUrl;
  final String url;
  final String publicPlayerUrl;
  final String playlistPlsUrl;
  final String playlistM3uUrl;
  final bool isPublic;

  Station(
      {required this.id,
      required this.name,
      required this.shortcode,
      required this.description,
      required this.frontend,
      required this.backend,
      required this.listenUrl,
      required this.url,
      required this.publicPlayerUrl,
      required this.playlistPlsUrl,
      required this.playlistM3uUrl,
      required this.isPublic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'shortcode': shortcode,
      'description': description,
      'frontend': frontend,
      'backend': backend,
      'listenUrl': listenUrl,
      'url': url,
      'publicPlayerUrl': publicPlayerUrl,
      'playlistPlsUrl': playlistPlsUrl,
      'playlistM3uUrl': playlistM3uUrl,
      'isPublic': isPublic,
    };
  }

  factory Station.fromMap(Map<String, dynamic> map) {
    return Station(
      id: map['id'] as int,
      name: map['name'] as String,
      shortcode: map['shortcode'] as String,
      description: map['description'] as String,
      frontend: map['frontend'] as String,
      backend: map['backend'] as String,
      listenUrl: map['listen_url'] as String,
      url: map['url'] as String,
      publicPlayerUrl: map['public_player_url'] as String,
      playlistPlsUrl: map['playlist_pls_url'] as String,
      playlistM3uUrl: map['playlist_m3u_url'] as String,
      isPublic: map['is_public'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Station.fromJson(String source) =>
      Station.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Listeners {
  final int total;
  final int unique;
  final int current;

  Listeners({required this.total, required this.unique, required this.current});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': total,
      'unique': unique,
      'current': current,
    };
  }

  factory Listeners.fromMap(Map<String, dynamic> map) {
    return Listeners(
      total: map['total'] as int,
      unique: map['unique'] as int,
      current: map['current'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Listeners.fromJson(String source) =>
      Listeners.fromMap(json.decode(source) as Map<String, dynamic>);
}

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
}

class Song {
  final String id;
  final String text;
  final String artist;
  final String title;
  final String album;
  final String genre;
  final String isrc;
  final String lyrics;
  final String art;

  Song(
      {required this.id,
      required this.text,
      required this.artist,
      required this.title,
      required this.album,
      required this.genre,
      required this.isrc,
      required this.lyrics,
      required this.art});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'artist': artist,
      'title': title,
      'album': album,
      'genre': genre,
      'isrc': isrc,
      'lyrics': lyrics,
      'art': art,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      id: map['id'] as String,
      text: map['text'] as String,
      artist: map['artist'] as String,
      title: map['title'] as String,
      album: map['album'] as String,
      genre: map['genre'] as String,
      isrc: map['isrc'] as String,
      lyrics: map['lyrics'] as String,
      art: map['art'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Song.fromJson(String source) =>
      Song.fromMap(json.decode(source) as Map<String, dynamic>);
}
