import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/provider/tabbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    final tabProvider = Provider.of<TabbarProvider>(context, listen: false);
    tabProvider.initController(this);
  }

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabbarProvider>(context);

    return Scaffold(
      backgroundColor: AppColor.getSplashColor(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                Text(
                  "Statistics",
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
                    IconsaxPlusLinear.notification,
                    color: AppColor.textColor(context),
                  ),
                ),
              ],
            ),

            30.getHeightWhiteSpacing,

            Center(
              child: Column(
                children: [
                  Text(
                    "Current Balance",
                    style: context.textTheme.titleSmall?.copyWith(
                      color: AppColor.grey,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$8,545.00",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.textColor(context),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  30.getHeightWhiteSpacing,
                  Image(image: AssetImage('assets/images/grap4.png')),
                ],
              ),
            ),

            SizedBox(
              height: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tabProvider.months.length, (index) {
                    bool isSelected = tabProvider.tabController.index == index;

                    return Container(
                      width: MediaQuery.of(context).size.width / 7,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: GestureDetector(
                        onTap: () {
                          tabProvider.changeTab(index);
                        },
                        child: Container(
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.blue
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            tabProvider.months[index],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
