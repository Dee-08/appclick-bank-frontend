import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final flutterSecureStorage = FlutterSecureStorage();

  static final String themeKey = "hahhhbdcbdcdcdcd";

  static storeLogin(String value) async {
    return await flutterSecureStorage.write(key: "isLoggedIn", value: value);
  }

  static storeTime(String value) async {
    return await flutterSecureStorage.write(key: "lastLoginTime", value: value);
  }

  static Future<String?> getStoredLogin() async {
    return await flutterSecureStorage.read(key: "isLoggedIn");
  }

  static Future<String?> getStoredTime() async {
    return await flutterSecureStorage.read(key: "lastLoginTime");
  }

  static deleteStoredLogin() async {
    return await flutterSecureStorage.delete(key: "isLoggedIn");
  }

  static deleteStoredTime() async {
    return await flutterSecureStorage.delete(key: "lastLoginTime");
  }

  static storeTheme(String value) async {
    flutterSecureStorage.write(key: themeKey, value: value);
  }

  static Future<String?> getStoredTheme() async {
    return await flutterSecureStorage.read(key: themeKey);
  }
}
