import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/databases/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool hasSeenOnboarding = false;
  bool isLoggedIn = false;
  DateTime? lastLoginTime;

  void initAuth() async {
    var loginStatus = await SecureStorage.getStoredLogin();
    var timeLoggedIn = await SecureStorage.getStoredTime();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    hasSeenOnboarding = prefs.getBool("hasSeenOnboarding") ?? false;

    if (loginStatus == "true") {
      isLoggedIn = true;
    }

    if (timeLoggedIn != null) {
      lastLoginTime = DateTime.tryParse(timeLoggedIn);
      if (lastLoginTime != null) {
        final expire = DateTime.now().difference(lastLoginTime!);

        if (expire.inDays >= 1) {
          logOut();
        }
      }
    }
    notifyListeners();
  }

  void seenOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("hasSeenOnboarding", true);
    hasSeenOnboarding = true;
    notifyListeners();
  }

  void register(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      await AppClient.client.post(
        "/auth/register",
        body: {
          "email": emailController.text,
          "name": nameController.text,
          "password": passwordController.text,
        },

        onDone: (res, error) async {
          isLoading = false;
          notifyListeners();
          if (res.isSuccess) {
            await SecureStorage.deleteStoredLogin();
            await SecureStorage.deleteStoredTime();

            isLoggedIn = false;
            lastLoginTime = null;
            notifyListeners();
            if (context.mounted) {
              Navigator.pushNamed(context, "home");
            }
          }
        },
      );
    } on FlutterError catch (e) {
      print(e.message);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void login(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    await AppClient.client.post(
      "/auth/login",
      body: {
        "email": emailController.text,
        "password": passwordController.text,
      },

      onDone: (res, error) async {
        isLoading = false;
        notifyListeners();
        if (res.isSuccess) {
          DateTime now = DateTime.now();
          await SecureStorage.storeLogin("true");
          await SecureStorage.storeTime(now.toIso8601String());
          isLoggedIn = true;
          lastLoginTime = now;

          notifyListeners();
          if (context.mounted) {
            Navigator.pushNamed(context, "home");
          }
        }
      },
    );
  }

  void logOut() async {
    await SecureStorage.deleteStoredLogin();
    await SecureStorage.deleteStoredTime();

    isLoggedIn = false;
    lastLoginTime = null;

    notifyListeners();
  }
}
