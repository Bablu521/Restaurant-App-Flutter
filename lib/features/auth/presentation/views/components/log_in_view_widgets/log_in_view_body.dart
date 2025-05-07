import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/already_have_account_text.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_input_item.dart';
import 'package:restaurant_app_flutter/core/widgets/logo_section.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;
  bool isChecked = false;

  @override
  void dispose() {
    super.dispose();
    userController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoSection(),
        SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomInputItem(
                    text: "Email / Phone Number",
                    controller: userController,
                    hintText: "Jhonsmith@gmail.com",
                    sizedboxHeight: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomInputItem(
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
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: Checkbox(
                            fillColor: WidgetStateProperty.resolveWith<Color>((
                              Set<WidgetState> states,
                            ) {
                              return const Color(
                                0xFFF0F0F0,
                              ); // background color (checked and unchecked)
                            }),
                            side: BorderSide.none,
                            checkColor: AppColors.lightGrey,
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = value!;
                              setState(() {});
                            },
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Remember me",
                          style: AppStyles.style16.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5B5B5B),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRouter.forgotPasswordScreen,
                        );
                      },
                      child: Text(
                        "Forgot password ?",
                        style: AppStyles.style16.copyWith(
                          fontSize: 13,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                CustomButton(text: "log in", onPressed: () {}),
              ],
            ),
          ),
        ),
        SizedBox(height: 16),
        AlreadyHaveAccountText(
          text1: "Don’t have an account? ",
          text2: "Sign up",
          onTap: () {
            Navigator.maybePop(context);
          },
        ),
      ],
    );
  }
}
