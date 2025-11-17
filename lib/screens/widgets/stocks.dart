import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  final String header;
  final String subHeader;
  final String imagePath;
  final String amount;
  final bool isSelected;
  final VoidCallback onTap;
  final Color backgroundColor;

  const Stocks({
    super.key,
    required this.imagePath,
    required this.header,
    required this.subHeader,
    required this.amount,
    required this.isSelected,
    required this.onTap,
    this.backgroundColor = AppColor.lightGrey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: ImageWidget(imagePath: imagePath),
        ),
        title: Text(
          header,
          style: context.textTheme.titleMedium?.copyWith(
            color: isSelected ? AppColor.blue : AppColor.textColor(context),
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subHeader,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColor.darkGrey,
          ),
        ),
        trailing: Text(
          amount,
          style: context.textTheme.titleMedium?.copyWith(
            color: isSelected ? AppColor.blue : AppColor.textColor(context),
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
