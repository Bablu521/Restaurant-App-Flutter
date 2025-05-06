import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/sign_up_view.dart';
import 'package:restaurant_app_flutter/features/splash/presentation/views/onboarding_view.dart';
import 'package:restaurant_app_flutter/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRouter.splashScreen : (context) => SplashView(),
        AppRouter.onboardingScreen : (context) => OnboardingView(),
        AppRouter.signUpScreen : (context) => SignUpView()
      },
    );
  }
}
