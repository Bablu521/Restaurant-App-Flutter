import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTap;
  const AlreadyHaveAccountText({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: AppStyles.style16.copyWith(fontSize: 14)),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: AppStyles.style16.copyWith(
              fontSize: 14,
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
