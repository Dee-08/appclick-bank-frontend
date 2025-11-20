import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/databases/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/models/user_model.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  bool isLoggedIn = false;
  DateTime? lastLoginTime;

  UserModel? currentUser;

  void initAuth() async {
    var loginStatus = await SecureStorage.getStoredLogin();
    var timeLoggedIn = await SecureStorage.getStoredTime();

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
            currentUser = UserModel.fromMap(res.data["user"]);
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
          currentUser = UserModel.fromMap(res.data["user"]);
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

  Future<void> getUser(String id) async {
    isLoading = true;
    notifyListeners();

    await AppClient.client.get(
      "/users/$id",
      onDone: (res, error) async {
        isLoading = false;
        if (res.isSuccess) {
          currentUser = UserModel.fromMap(res.data["user"]);
          notifyListeners();
        }
      },
    );
  }

  Future<void> updateUser(String id) async {
    isLoading = true;
    notifyListeners();

    await AppClient.client.put(
      "/users/$id",
      body: {"name": nameController.text, "phone_number": phoneController.text},
      onDone: (res, error) async {
        isLoading = false;

        if (res.isSuccess) {
          currentUser = UserModel.fromMap(res.data["user"]);
          notifyListeners();
        }
      },
    );
  }

  Future<void> uploadBVN(String id, String bvn) async {
    isLoading = true;
    notifyListeners();

    await AppClient.client.put(
      "/users/$id/bvn",
      body: {"bvn": bvn},
      onDone: (res, error) {
        isLoading = false;
        if (res.isSuccess) {
          currentUser = UserModel.fromMap(res.data["user"]);
          notifyListeners();
        }
      },
    );
  }

  Future<void> uploadNIN(String id, String nin) async {
    isLoading = true;
    notifyListeners();

    await AppClient.client.put(
      "/users/$id/nin",
      body: {"nin": nin},
      onDone: (res, error) {
        isLoading = false;

        if (res.isSuccess) {
          currentUser = UserModel.fromMap(res.data["user"]);
          notifyListeners();
        }
      },
    );
  }

  Future<void> updatePIN(String id, String pin) async {
    isLoading = true;
    notifyListeners();

    await AppClient.client.put(
      "/users/$id/pin",
      body: {"pin": pin},
      onDone: (res, error) {
        isLoading = false;
        notifyListeners();
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
