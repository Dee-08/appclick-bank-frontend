import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/provider/stock_selection_provider.dart';
import 'package:bank_app/provider/transaction_provider.dart';
import 'package:bank_app/screens/widgets/image_widget.dart' show ImageWidget;
import 'package:bank_app/screens/widgets/stocks.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    final stockProvider = context.watch<StockSelectionProvider>();
    final transactions = TransactionsData.transactions;

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
                    child: Center(
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
                  Text(
                    "My Cards",
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.textColor(context),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
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
                      IconsaxPlusLinear.add,
                      color: AppColor.textColor(context),
                    ),
                  ),
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

              15.getHeightWhiteSpacing,
              Column(
                children: List.generate(transactions.take(3).length, (index) {
                  final transaction = transactions[index];

                  return Stocks(
                    imagePath: transaction["image"]!,
                    header: transaction["header"]!,
                    subHeader: transaction["sub"]!,
                    amount: transaction["amount"]!,
                    isSelected: stockProvider.selectedIndex == index,
                    onTap: () {
                      stockProvider.selectIndex(index);
                    },
                  );
                }),
              ),
              20.getHeightWhiteSpacing,

              Text(
                "Monthly spending limit",
                textAlign: TextAlign.start,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColor.textColor(context),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              15.getHeightWhiteSpacing,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),

                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amount: \$8,545.00",
                        textAlign: TextAlign.start,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColor.textColor(context),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      15.getHeightWhiteSpacing,
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 17,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 8,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.getHeightWhiteSpacing,
                      Row(
                        children: [
                          Text(
                            "\$0",
                            textAlign: TextAlign.start,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          68.getWidthWhiteSpacing,

                          Text(
                            "\$4,600",
                            textAlign: TextAlign.start,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.textColor(context),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$10,000",
                            textAlign: TextAlign.start,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              20.getHeightWhiteSpacing,
            ],
          ),
        ),
      ),
    );
  }
}
