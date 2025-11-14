import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColor.dark,
                      size: 18,
                    ),
                  ),
                ),
                Text(
                  "Settings",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColor.dark,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.logout_rounded, color: AppColor.dark),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "General",
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Language",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "English",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColor.darkGrey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 24,
                      color: AppColor.darkGrey,
                    ),
                  ],
                ),
              ],
            ),
            20.getHeightWhiteSpacing,
            Divider(height: 1, color: Colors.grey[300]),
            30.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Profile",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: AppColor.darkGrey,
                ),
              ],
            ),
            20.getHeightWhiteSpacing,
            Divider(height: 1, color: Colors.grey[300]),

            30.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contact Us",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: AppColor.darkGrey,
                ),
              ],
            ),
            20.getHeightWhiteSpacing,
            Divider(height: 1, color: Colors.grey[300]),

            SizedBox(height: 30),
            Text(
              "Security",
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            40.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Change Password",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: AppColor.darkGrey,
                ),
              ],
            ),
            10.getHeightWhiteSpacing,
            Divider(height: 1, color: Colors.grey[300]),

            30.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Privacy Policy",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: AppColor.darkGrey,
                ),
              ],
            ),
            10.getHeightWhiteSpacing,
            Divider(height: 1, color: Color(0xffF4F4F4)),
            SizedBox(height: 15),
            Text(
              "Choose what data you share with us",
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w400,
              ),
            ),
            30.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Biometric",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15),
                Switch(
                  value: settingsProvider.isSwitched,
                  onChanged: (value) {
                    settingsProvider.changeSwitch(value);
                  },
                  thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColor.white;
                    } else {
                      return AppColor.white;
                    }
                  }),
                  trackColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColor.primary;
                    } else {
                      return AppColor.primary;
                    }
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
