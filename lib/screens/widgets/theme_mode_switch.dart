import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(
          context,
          listen: false,
        ).changeMode(!context.isDark);
      },
      child: Container(
        width: 42,
        height: 42,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(),
          color: AppColor.primary,
        ),
        child: Icon(Icons.light_mode, color: Colors.white),
      ),
    );
  }
}
