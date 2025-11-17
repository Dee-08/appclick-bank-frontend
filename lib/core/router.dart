import 'package:bank_app/screens/receive.dart';
import 'package:bank_app/screens/screens.dart';
import 'package:bank_app/screens/home.dart';
import 'package:bank_app/screens/send.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
    "home": (BuildContext context) => Home(),
    "homescreen": (BuildContext context) => HomeScreen(),
    "login": (BuildContext context) => LogIn(),
    "onboarding": (BuildContext context) => Onboarding(),
    "signup": (BuildContext context) => SignUp(),
    "send": (BuildContext context) => Send(),
    "receive": (BuildContext context) => Receive(),
  };
}
