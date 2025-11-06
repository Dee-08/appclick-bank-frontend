import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/provider/home_provider.dart';
import 'package:bank_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    final screens = [HomeScreen(), Cards(), Statistics(), Settings()];
    return Scaffold(
      body: screens[homeProvider.currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.navColor(context),
        selectedItemColor: AppColor.blue,
        unselectedItemColor: AppColor.iconColor,
        currentIndex: homeProvider.currentIndex,
        onTap: (value) {
          homeProvider.changeIndex(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.home_1),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.wallet_2),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.chart_square),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.setting_2),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
