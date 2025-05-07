import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_back_app_bar.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_text_form_field.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/forgot_password_view_widgets/forgot_password_card_section.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final TextEditingController userController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 55),
          CustomBackAppBar(),
          SizedBox(height: 35),
          ForgotPasswordCardSection(),
          SizedBox(height: 24),
          CustomTextFormField(
            controller: userController,
            hintText: "Email or Phone Number",
          ),
          SizedBox(height: 24),
          CustomButton(
            text: "Confirm",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.otpVerificationScreen);
            },
          ),
        ],
      ),
    );
  }
}
