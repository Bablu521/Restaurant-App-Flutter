import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_text_form_field.dart';

class CustomInputItem extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final String hintText;
  final double sizedboxHeight;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  const CustomInputItem({
    super.key,
    required this.text,
    required this.controller,
    required this.hintText,
    required this.sizedboxHeight,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: AppStyles.style16),
          CustomTextFormField(
            controller: controller,
            hintText: hintText,
            suffixIcon: suffixIcon,
            keyboardType: keyboardType,
            obscureText: obscureText,
          ),
          SizedBox(height: sizedboxHeight),
        ],
      ),
    );
  }
}
