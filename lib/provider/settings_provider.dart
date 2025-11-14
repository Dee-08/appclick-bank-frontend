import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool isSwitched = false;

  void changeSwitch(bool value) {
    isSwitched = value;
    notifyListeners();
  }
}
