import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/already_have_account_text.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/logo_section.dart';
import 'package:restaurant_app_flutter/features/splash/presentation/views/components/onboarding_view_widgets/dots_indicator.dart';
import 'package:restaurant_app_flutter/features/splash/presentation/views/components/onboarding_view_widgets/image_section.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LogoSection(),
        ImageSection(),
        Text("Food quality", style: AppStyles.style26),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Text(
            "Enjoy high-quality food made with fresh ingredients, rich flavors, and great attention to detail",
            style: AppStyles.style16,
            textAlign: TextAlign.center,
          ),
        ),
        DotsIndicator(),
        CustomButton(
          text: "Sign up",
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.signUpScreen);
          },
        ),
        SizedBox(height: 16),
        AlreadyHaveAccountText(
          text1: "Already have an acc? ",
          text2: "Log in",
          onTap: () {},
        ),
      ],
    );
  }
}
