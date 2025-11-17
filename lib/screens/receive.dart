import 'package:bank_app/core/constants/app_buttons.dart';
import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/screens/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Receive extends StatefulWidget {
  const Receive({super.key});

  @override
  State<Receive> createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
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
                ),
                Center(
                  child: Text(
                    "Request Money",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.textColor(context),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(),
              ],
            ),
            30.getHeightWhiteSpacing,
            Text(
              "Payer Name",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  IconsaxPlusBold.profile_circle,
                  color: Colors.grey,
                ),
                hintText: "Oluwaseyi Omotunde",
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
            10.getHeightWhiteSpacing,
            Text(
              "Email Address",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                hintText: "Oluwaseyi@gmail.com",
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
            10.getHeightWhiteSpacing,
            Text(
              "Description",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  IconsaxPlusBold.profile_circle,
                  color: Colors.grey,
                ),
                hintText: "Oluwaseyi Omotunde",
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
            10.getHeightWhiteSpacing,
            Text(
              "Monthly Due By",
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "DD",
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                10.getWidthWhiteSpacing,
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "MM",
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                10.getWidthWhiteSpacing,
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "YYYY",
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
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
                          "26.00.00",
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
