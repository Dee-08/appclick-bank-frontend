import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color labelColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const AppIconButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconColor = AppColor.iconButtonIconColor,
    this.labelColor = AppColor.iconButtonIconColor,
    this.backgroundColor = AppColor.lightGrey,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 25, color: iconColor),
          ),
          8.getHeightWhiteSpacing,
          Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(color: labelColor),
          ),
        ],
      ),
    );
  }
}
