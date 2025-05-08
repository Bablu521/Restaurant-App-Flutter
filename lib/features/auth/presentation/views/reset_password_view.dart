import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/reset_password_view_widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResetPasswordViewBody(),
    );
  }
}