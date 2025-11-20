import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/provider/auth_provider.dart';
import 'package:bank_app/provider/recipient_provider.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:bank_app/screens/widgets/recipient_form.dart';
import 'package:bank_app/screens/widgets/recipient_list.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecipientProvider>(context);
    final auth = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.getSplashColor(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.getHeightWhiteSpacing,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: AppColor.navColor(context),
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
                                    auth.currentUser?.name ?? '',
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
                                            "24/2029",
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
              provider.isFormOpen ? RecipientForm() : RecipientList(),
            ],
          ),
        ),
      ),
    );
  }
}
