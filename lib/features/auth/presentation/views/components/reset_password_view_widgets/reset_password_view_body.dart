import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_back_app_bar.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_input_item.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();
  bool hidePassword = true;
  bool hideCPassword = true;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    cPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55),
          CustomBackAppBar(),
          SizedBox(height: 50),
          Text("New Password", style: AppStyles.style24),
          SizedBox(height: 16),
          Text(
            "Please enter your new password.",
            style: AppStyles.style16.copyWith(
              color: AppColors.blackTextColor2,
              fontFamily: "Rubik-Regular",
            ),
          ),
          SizedBox(height: 40),
          CustomInputItem(
            text: "Password",
            controller: passwordController,
            hintText: "Password",
            sizedboxHeight: 16,
            obscureText: hidePassword,
            suffixIcon: IconButton(
              onPressed: () {
                hidePassword = !hidePassword;
                setState(() {});
              },
              icon: Icon(
                hidePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              ),
            ),
          ),
          CustomInputItem(
            text: "Confirm password",
            controller: cPasswordController,
            hintText: "Confirm password",
            sizedboxHeight: 24,
            obscureText: hideCPassword,
            suffixIcon: IconButton(
              onPressed: () {
                hideCPassword = !hideCPassword;
                setState(() {});
              },
              icon: Icon(
                hideCPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              ),
            ),
          ),
          CustomButton(
            text: "Confirm password",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.logInScreen);
            },
          ),
        ],
      ),
    );
  }
}
