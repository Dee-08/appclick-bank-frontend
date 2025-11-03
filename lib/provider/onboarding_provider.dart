import 'package:bank_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      "title": "Fastest Payment in the world",
      "subtitle":
          "Integrate multiple payment methoods to help you up the process quickly.",
      "image": AppImages.board2,
    },
    {
      "title": "The most Secoure Platfrom for Customers",
      "subtitle":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe.",
      "image": AppImages.board3,
    },
    {
      "title": "Paying for Everything is Easy and Convenient",
      "subtitle":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe.",
      "image": AppImages.board4,
    },
  ];

  int get currentPage => _currentPage;

  void nextPage(BuildContext context) {
    if (_currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushNamed(context, "signup");
    }
  }

  setindex(int index) {
    _currentPage = index;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
