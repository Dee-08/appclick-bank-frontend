import 'package:bank_app/screens/screens.dart';
import 'package:bank_app/screens/home.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
    "home": (BuildContext context) => Home(),
    "homescreen": (BuildContext context) => HomeScreen(),
    "login": (BuildContext context) => LogIn(),
    "onboarding": (BuildContext context) => Onboarding(),
    "signup": (BuildContext context) => SignUp(),
    "settings": (BuildContext context) => Settings(),
  };
}
