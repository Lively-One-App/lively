
import 'dart:convert';

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
