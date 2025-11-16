import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Sendmoney extends StatefulWidget {
  const Sendmoney({super.key});

  @override
  State<Sendmoney> createState() => _SendmoneyState();
}

class _SendmoneyState extends State<Sendmoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.getSplashColor(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            30.getHeightWhiteSpacing,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: AppColor.lightGrey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      15.getWidthWhiteSpacing,

                      Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: AppColor.textColor(context),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "Send Money",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.textColor(context),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(),
              ],
            ),
            40.getHeightWhiteSpacing,
            Container(
              height: context.screenSize.height * 0.25,
              width: context.screenSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.card,
                image: DecorationImage(
                  image: AssetImage('assets/images/worldMap.png'),
                  fit: BoxFit.cover,
                  opacity: 0.12,
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ImageWidget(imagePath: AppImages.data),
                            Icon(
                              IconsaxPlusBold.wifi,
                              color: AppColor.cardInner,
                            ),
                          ],
                        ),
                        20.getHeightWhiteSpacing,
                        Text(
                          "4562  1122  4595  7852",
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: AppColor.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        15.getHeightWhiteSpacing,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AR Jonson",
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: AppColor.white,
                                    fontSize: 16,
                                  ),
                                ),
                                8.getHeightWhiteSpacing,
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Expiry Date",
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: AppColor.white,
                                              ),
                                        ),
                                        8.getHeightWhiteSpacing,
                                        Text(
                                          "24/2000",
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                fontSize: 14,
                                                color: AppColor.white,
                                              ),
                                        ),
                                      ],
                                    ),
                                    20.getWidthWhiteSpacing,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CVV",
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: AppColor.white,
                                              ),
                                        ),
                                        8.getHeightWhiteSpacing,
                                        Text(
                                          "6886",
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                fontSize: 14,
                                                color: AppColor.white,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE53E3E),
                                        shape: BoxShape.circle,
                                      ),
                                    ),

                                    Transform.translate(
                                      offset: Offset(-10, 0),
                                      child: Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF6C042),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                15.getHeightWhiteSpacing,
                                Text(
                                  "Mastercard",
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: AppColor.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            30.getHeightWhiteSpacing,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Send to",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        15.getHeightWhiteSpacing,
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 15,
                      left: 5,
                      right: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Add",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Yamilet",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Alexa",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Yakub",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Krishna",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColor.textColor(context),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            30.getHeightWhiteSpacing,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter your Amount",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "EChange currency?",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    20.getHeightWhiteSpacing,
                    Row(
                      children: [
                        Text(
                          "USD",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        20.getWidthWhiteSpacing,
                        Text(
                          "36.00",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            AppButtons(onPressed: () {}, text: "Send Money"),
          ],
        ),
      ),
    );
  }
}
