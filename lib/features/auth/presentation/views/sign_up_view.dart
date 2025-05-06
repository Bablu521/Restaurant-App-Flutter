import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/sign_up_view_widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}