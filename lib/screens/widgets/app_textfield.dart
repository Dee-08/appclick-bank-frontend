import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String label;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;

  const AppTextfield({
    super.key,
    required this.label,
    this.controller,
    this.validator,
    this.decoration,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final defaultDecoration = InputDecoration(
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColor.lightGrey, width: 1.5),
      ),
      contentPadding: EdgeInsets.only(left: 0, right: 16, top: 16, bottom: 16),
      prefixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            fontSize: 16,
            color: AppColor.darkGrey,
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: defaultDecoration.copyWith(
            prefixIcon: decoration?.prefixIcon,
            prefixIconConstraints: decoration?.prefixIconConstraints,
            hintText: decoration?.hintText,
            suffixIcon: decoration?.suffixIcon,
          ),
          keyboardType: keyboardType,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 18,
            color: AppColor.textColor(context),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
