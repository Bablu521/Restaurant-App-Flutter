import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class CustomBackAppBar extends StatelessWidget {
  const CustomBackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.maybePop(context);
          },
          child: SizedBox(
            width: 24,
            height: 24,
            child: Icon(Icons.arrow_back_ios, color: AppColors.blackTextColor2),
          ),
        ),
        SizedBox(width: 1),
        Text(
          "Back",
          style: AppStyles.style16.copyWith(color: AppColors.blackTextColor2),
        ),
      ],
    );
  }
}
