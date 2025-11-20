import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String email;
  final String? profilePicUrl;
  final DateTime? createdAt;
  final String? accountNumber;
  final String? bvn;
  final String? nin;
  final String? pin;
  final String? kycStatus;
  final String? address;
  final String? gender;
  final String? dateOfBirth;
  final String? walletBalance;
  final String? ledgerBalance;

  UserModel({
    this.accountNumber,
    this.bvn,
    this.nin,
    this.pin,
    this.kycStatus,
    this.address,
    this.gender,
    this.dateOfBirth,
    this.walletBalance,
    this.ledgerBalance,
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
      'accountNumber': accountNumber,
      'bvn': bvn,
      'nin': nin,
      'pin': pin,
      'kycStatus': kycStatus,
      'address': address,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'walletBalance': walletBalance,
      'ledgerBalance': ledgerBalance,
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
        accountNumber: map['accountNumber'],
        gender: map['gender'],
        kycStatus: map['kycStatus'],
        address: map['address'],
        bvn: map['bvn'],
        nin: map['nin'],
        pin: map['pin'],
        dateOfBirth: map['dateOfBirth'],
        walletBalance: map['walletBalance'],
        ledgerBalance: map['ledgerBalance'],
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
