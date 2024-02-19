

import 'dart:convert';

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
