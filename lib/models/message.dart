import 'dart:convert';

class Message {
  final String id;
  final String message;
  final bool isOpened;
  final bool isReplied;
  Message({
    required this.id,
    required this.message,
    required this.isOpened,
    required this.isReplied,
  });

  Message copyWith({
    String? id,
    String? message,
    bool? isOpened,
    bool? isReplied,
  }) {
    return Message(
      id: id ?? this.id,
      message: message ?? this.message,
      isOpened: isOpened ?? this.isOpened,
      isReplied: isReplied ?? this.isReplied,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'message': message,
      'isOpened': isOpened,
      'isReplied': isReplied,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'],
      message: map['message'],
      isOpened: map['isOpened'],
      isReplied: map['isReplied'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Message(id: $id, message: $message, isOpened: $isOpened, isReplied: $isReplied)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message &&
        other.id == id &&
        other.message == message &&
        other.isOpened == isOpened &&
        other.isReplied == isReplied;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        message.hashCode ^
        isOpened.hashCode ^
        isReplied.hashCode;
  }
}
