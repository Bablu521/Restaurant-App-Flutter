import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/forgot_password_view_widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotPasswordViewBody(
      ),
    );
  }
}