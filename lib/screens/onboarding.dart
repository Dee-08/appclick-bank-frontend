import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/onboarding_provider.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var onboardingProvider = Provider.of<OnboardingProvider>(context);
    var pages = onboardingProvider.onboardingData;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.screenSize.height * 0.8,
              child: PageView.builder(
                itemCount: pages.length,
                onPageChanged: onboardingProvider.setindex,
                controller: onboardingProvider.pageController,
                itemBuilder: (context, index) {
                  var page = pages[index];
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 100),
                        const SizedBox(height: 40),
                        ImageWidget(
                          imagePath: page["image"] ?? "",
                          width: 500,
                          height: 200,
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 5,
                          children: [
                            Container(
                              height: 7,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                         SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            page["title"] ?? "",
                            textAlign: TextAlign.center,
                            style: context.textTheme.titleLarge?.copyWith(
                              fontFamily: FontFamily.poppins,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              letterSpacing: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            page["subtitle"] ?? "",

                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontFamily: FontFamily.poppins,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            GestureDetector(
              onTap: () {
                onboardingProvider.nextPage(context);
              },
              child: Container(
                height: 70,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: context.textTheme.titleLarge?.copyWith(
                      fontFamily: FontFamily.poppins,
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
