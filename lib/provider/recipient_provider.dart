import 'package:flutter/material.dart';
import '../models/recipient_model.dart';

class RecipientProvider extends ChangeNotifier {
  List<Recipient> recipients = [];

  bool isFormOpen = false;
  Recipient? selected;

  void openAddForm() {
    selected = null;
    isFormOpen = true;
    notifyListeners();
  }

  void openEditForm(Recipient r) {
    selected = r;
    isFormOpen = true;
    notifyListeners();
  }

  void closeForm() {
    isFormOpen = false;
    notifyListeners();
  }

  void addRecipient(String name, String account) {
    recipients.add(Recipient(name: name, account: account));
    closeForm();
  }

  void updateRecipient(String name, String account) {
    if (selected != null) {
      int index = recipients.indexOf(selected!);
      recipients[index] = Recipient(name: name, account: account);
    }
    closeForm();
  }
}
