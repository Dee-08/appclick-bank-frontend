import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String email;
  final String? profilePicUrl;
  final DateTime? createdAt;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.createdAt,
    this.profilePicUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicUrl': profilePicUrl,
      'createdAt': createdAt,
    };
  }

  static UserModel? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    try {
      return UserModel(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        profilePicUrl: map['profilePicUrl'],
        createdAt: DateTime.tryParse(map['createdAt']),
      );
    } catch (e) {
      return null;
    }
  }

  String toJson() => json.encode(toMap());

  static UserModel? fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
