class Recipient {
  final String name;
  final String account;

  Recipient({required this.name, required this.account});

  factory Recipient.fromMap(Map<String, dynamic> map) {
    return Recipient(name: map['name'], account: map['account']);
  }

  Map<String, dynamic> toMap() => {"name": name, "account": account};
}
