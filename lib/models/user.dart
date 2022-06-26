import 'dart:convert';

class AppUser {
  final String id;
  final String username;
  final String dmLink;
  AppUser({
    required this.id,
    required this.username,
    required this.dmLink,
  });

  AppUser copyWith({
    String? id,
    String? username,
    String? dmLink,
  }) {
    return AppUser(
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

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      id: map['id'],
      username: map['username'],
      dmLink: map['dmLink'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) =>
      AppUser.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id, username: $username, dmLink: $dmLink)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppUser &&
        other.id == id &&
        other.username == username &&
        other.dmLink == dmLink;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ dmLink.hashCode;
}
