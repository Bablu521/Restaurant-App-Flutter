import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_back_app_bar.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_text_form_field.dart';

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
          Padding(
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
          ),
          SizedBox(height: 24,),
          CustomTextFormField(controller: userController, hintText: "Email or phone number",),
          SizedBox(height: 24,),
          CustomButton(text: "confirm", onPressed: (){})
        ],
      ),
    );
  }
}
