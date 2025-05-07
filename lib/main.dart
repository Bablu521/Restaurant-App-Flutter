import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/forgot_password_view.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/log_in_view.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/reset_password_view.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/sign_up_view.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/update_profile_view.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/verify_email_view.dart';
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
        AppRouter.signUpScreen : (context) => SignUpView(),
        AppRouter.logInScreen : (context) => LogInView(),
        AppRouter.forgotPasswordScreen : (context) => ForgotPasswordView(),
        AppRouter.verifyEmailScreen : (context) => VerifyEmailView(),
        AppRouter.resetPasswordScreen : (context) => ResetPasswordView(),
        AppRouter.updateProfileScreen : (context) => UpdateProfileView()
      },
    );
  }
}
