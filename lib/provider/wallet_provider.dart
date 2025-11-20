import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import '../models/wallet_model.dart';
import '../models/wallet_transaction_model.dart';

class WalletProvider extends ChangeNotifier {
  final AuthProvider auth;
  WalletProvider({required this.auth});

  TextEditingController accountController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  WalletModel? wallet;
  List<WalletTransactionModel> transactions = [];

  bool loading = false;
  bool transferLoading = false;

  Future<void> getBalance() async {
    if (auth.currentUser == null) return;
    loading = true;
    notifyListeners();

    final accountNumber = auth.currentUser!.accountNumber;

    final res = await AppClient.client.get("/wallet/balance/$accountNumber");

    loading = false;

    if (res.isSuccess) {
      wallet = WalletModel.fromMap(res.data['data']);
      notifyListeners();
    }
  }

  Future<void> getTransactions() async {
    if (auth.currentUser == null) return;
    final accountNumber = auth.currentUser!.accountNumber;
    final res = await AppClient.client.get(
      "/wallet/transactions/$accountNumber",
    );

    if (res.isSuccess) {
      transactions = (res.data['data']['transactions'] as List)
          .map((e) => WalletTransactionModel.fromMap(e))
          .toList();

      notifyListeners();
    }
  }

  Future<bool> transfer() async {
    if (auth.currentUser == null) return false;
    transferLoading = true;
    notifyListeners();

    final fromAccount = auth.currentUser!.accountNumber;

    final res = await AppClient.client.post(
      "/wallet/transfer",
      body: {
        "from_account": fromAccount,
        "to_account": accountController.text,
        "amount": amountController.text,
        "description": descriptionController.text,
      },
    );
    transferLoading = false;
    if (res.isSuccess) {
      await getBalance();
      await getTransactions();
      notifyListeners();
      return true;
    }
    notifyListeners();
    return false;
  }
}
