import 'package:bank_app/screens/log_in.dart';
import 'package:bank_app/screens/onboarding.dart';
import 'package:bank_app/screens/screens.dart';
import 'package:bank_app/screens/sign_up.dart';
import 'package:bank_app/screens/widgets/home.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
    "home": (BuildContext context) => HomeScreen(),
    "login": (BuildContext context) => LogIn(),
    "onboardinig": (BuildContext context) => Onboarding(),
    "signup": (BuildContext context) => SignUp(),
  };
}
