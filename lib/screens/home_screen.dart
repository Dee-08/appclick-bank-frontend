import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.getSplashColor(context),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.getHeightWhiteSpacing,
            SizedBox(
              width: context.screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColor.lightGrey,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage("assets/images/profile.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        10.getWidthWhiteSpacing,
                        SizedBox(
                          width: 195,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: context.screenSize.width,
                                child: Text(
                                  "Welcome Back,",
                                  textAlign: TextAlign.start,
                                  style: context.textTheme.titleSmall?.copyWith(
                                    color: AppColor.grey,

                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: context.screenSize.width,
                                child: Text(
                                  "Tanya Monruk",
                                  textAlign: TextAlign.start,
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: AppColor.textColor(context),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.search,
                      color: AppColor.textColor(context),
                    ),
                  ),
                ],
              ),
            ),
            30.getHeightWhiteSpacing,
            Container(
              height: context.screenSize.height * 0.25,
              width: context.screenSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Container(
                    width: context.screenSize.width,
                    height: context.screenSize.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/worldMap.png'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          AppColor.primary.withValues(alpha: 0.4),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
