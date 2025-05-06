import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/splash/presentation/views/components/onboarding_view_widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
