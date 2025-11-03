import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'onboardinig');
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
