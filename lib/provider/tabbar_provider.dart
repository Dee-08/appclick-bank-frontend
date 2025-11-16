import 'package:flutter/material.dart';

class TabbarProvider extends ChangeNotifier {
  late TabController tabController;

  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  void initController(TickerProvider vsync) {
    tabController = TabController(length: months.length, vsync: vsync);
  }

  void changeTab(int index) {
    tabController.animateTo(index);
    notifyListeners();
  }
}
