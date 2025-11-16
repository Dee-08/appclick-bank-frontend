import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.getSplashColor(context),

      body: SingleChildScrollView(
        child: Padding(
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
                                  image: AssetImage(
                                    "assets/images/profile.jpg",
                                  ),
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
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(
                                          color: AppColor.grey,

                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.screenSize.width,
                                  child: Text(
                                    "Daniel David",
                                    textAlign: TextAlign.start,
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
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
                                    style: context.textTheme.bodySmall
                                        ?.copyWith(
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
                                    style: context.textTheme.bodySmall
                                        ?.copyWith(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIconButton(
                    label: "Send",
                    icon: IconsaxPlusLinear.arrow_up,
                    onPressed: () {
                      Navigator.pushNamed(context, "sendmoney");
                    },
                  ),
                  AppIconButton(
                    label: "Receive",
                    icon: IconsaxPlusLinear.arrow_down_1,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    label: "Loan",
                    icon: IconsaxPlusLinear.dollar_circle,
                    onPressed: () {},
                  ),
                  AppIconButton(
                    label: "Topup",
                    icon: IconsaxPlusLinear.cloud_add,
                    onPressed: () {},
                  ),
                ],
              ),
              15.getHeightWhiteSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColor.primary,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Sell All",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColor.blue,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
