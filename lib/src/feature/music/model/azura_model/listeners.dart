// ignore_for_file: public_member_api_docs, sort_constructors_first


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

  @override
  bool operator ==(covariant Listeners other) {
    if (identical(this, other)) return true;
  
    return 
      other.total == total &&
      other.unique == unique &&
      other.current == current;
  }

  @override
  int get hashCode => total.hashCode ^ unique.hashCode ^ current.hashCode;
}
