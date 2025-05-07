import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class ResendTimerSection extends StatelessWidget {
  const ResendTimerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "00:23",
          style: AppStyles.style13.copyWith(
            fontFamily: "Rubik-Medium",
            fontWeight: FontWeight.w500,
          ),
        ),
        Text("   Resend confirmation code", style: AppStyles.style13),
      ],
    );
  }
}
