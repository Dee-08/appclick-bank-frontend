import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/provider/auth_provider.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var auth = Provider.of<AuthProvider>(context);
    Future.delayed(Duration(seconds: 3), () {
      if (!auth.isLoggedIn) {
        Navigator.pushNamed(context, "login");
      } else {
        Navigator.pushNamed(context, "home");
      }
    });
    return Scaffold(
      body: Container(
        color: AppColor.getSplashColor(context),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ImageWidget(imagePath: AppImages.logo)],
          ),
        ),
      ),
    );
  }
}
