import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/otp_verification_view_widegets/otp_verification_view_body.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OTPVerificationViewBody(),
    );
  }
}