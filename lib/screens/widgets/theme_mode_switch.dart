import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch(
      value: context.isDark, // or themeProvider.isDarkMode
      onChanged: (value) {
        themeProvider.changeMode(value);
      },
      thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
        return AppColor.white;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColor.darkNav; // Dark mode ON
        } else {
          return AppColor.primary.withValues(alpha: 0.5); // Light mode OFF
        }
      }),
    );
  }
}
