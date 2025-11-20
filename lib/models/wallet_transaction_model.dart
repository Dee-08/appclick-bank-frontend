class WalletTransactionModel {
  final String id;
  final String userId;
  final String walletId;
  final double amount;
  final String type;
  final String reference;
  final String status;
  final String? description;

  WalletTransactionModel({
    required this.id,
    required this.userId,
    required this.walletId,
    required this.amount,
    required this.type,
    required this.reference,
    required this.status,
    this.description,
  });

  factory WalletTransactionModel.fromMap(Map<String, dynamic> map) {
    return WalletTransactionModel(
      id: map['id'],
      userId: map['user_id'],
      walletId: map['wallet_id'],
      amount: (map['amount'] ?? 0).toDouble(),
      type: map['type'],
      reference: map['reference'],
      status: map['status'],
      description: map['description'],
    );
  }
}
