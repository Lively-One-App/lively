// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

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

  @override
  bool operator ==(covariant Station other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.shortcode == shortcode &&
      other.description == description &&
      other.frontend == frontend &&
      other.backend == backend &&
      other.listenUrl == listenUrl &&
      other.url == url &&
      other.publicPlayerUrl == publicPlayerUrl &&
      other.playlistPlsUrl == playlistPlsUrl &&
      other.playlistM3uUrl == playlistM3uUrl &&
      other.isPublic == isPublic;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      shortcode.hashCode ^
      description.hashCode ^
      frontend.hashCode ^
      backend.hashCode ^
      listenUrl.hashCode ^
      url.hashCode ^
      publicPlayerUrl.hashCode ^
      playlistPlsUrl.hashCode ^
      playlistM3uUrl.hashCode ^
      isPublic.hashCode;
  }
}
