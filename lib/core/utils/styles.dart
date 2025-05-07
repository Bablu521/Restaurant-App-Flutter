import 'package:flutter/widgets.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';

abstract class AppStyles {
  static const TextStyle style26 = TextStyle(
    fontFamily: "Rubik-Medium",
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.blackTextColor
  );

  static const TextStyle style24 = TextStyle(
    fontFamily: "Rubik-Medium",
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.blackTextColor2,
  );

  static const TextStyle style16 = TextStyle(
    fontFamily: "Rubik-Medium",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.blackTextColor,
  );

  static const TextStyle hintTextStyle16 = TextStyle(
    fontFamily: "Rubik-Regular",
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.lightGrey,
  );

  static const TextStyle style13 = TextStyle(
    fontFamily: "Rubik-Regular",
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.blackTextColor2,
  );
}
