import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String username;
  final String dmLink;
  User({
    required this.id,
    required this.username,
    required this.dmLink,
  });

  User copyWith({
    String? id,
    String? username,
    String? dmLink,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      dmLink: dmLink ?? this.dmLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'dmLink': dmLink,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      dmLink: map['dmLink'],
    );
  }

  factory User.fromFirebase(DocumentSnapshot documentSnapshot) {
    final map = documentSnapshot.data() as Map<String, dynamic>;
    return User(
      id: map['id'],
      username: map['username'],
      dmLink: map['dmLink'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id, username: $username, dmLink: $dmLink)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.username == username &&
        other.dmLink == dmLink;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ dmLink.hashCode;
}
