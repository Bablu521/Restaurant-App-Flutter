import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 48,
      color: AppColors.mainColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Text(
        text,
        style: AppStyles.style16.copyWith(
          fontWeight: FontWeight.w500,
          color: Color(0xffFDFDFD),
        ),
      ),
    );
  }
}
