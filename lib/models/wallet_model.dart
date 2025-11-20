class WalletModel {
  final String id;
  final String userId;
  final double balance;
  final double ledgerBalance;
  final String currency;

  WalletModel({
    required this.id,
    required this.userId,
    required this.balance,
    required this.ledgerBalance,
    required this.currency,
  });

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      id: map['id'],
      userId: map['user_id'],
      balance: (map['balance'] ?? 0).toDouble(),
      ledgerBalance: (map['ledger_balance'] ?? 0).toDouble(),
      currency: map['currency'] ?? "NGN",
    );
  }
}
