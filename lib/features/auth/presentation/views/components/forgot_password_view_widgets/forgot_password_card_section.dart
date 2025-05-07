import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class ForgotPasswordCardSection extends StatelessWidget {
  const ForgotPasswordCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.5),
            child: SizedBox(
              child: Column(
                children: [
                  Image.asset(AppAssets.forgotPasswordImage),
                  SizedBox(height: 40),
                  Text("Forgot password ?", style: AppStyles.style24),
                  SizedBox(height: 16),
                  Text(
                    "Please write your email or phone number to receive a confirmation code to set a new password.",
                    style: AppStyles.style13,
                    textAlign: TextAlign.center,
                  ),
                  
                ],
              ),
            ),
          );
  }
}