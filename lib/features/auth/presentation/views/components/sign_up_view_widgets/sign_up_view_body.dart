import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/widgets/already_have_account_text.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_input_item.dart';
import 'package:restaurant_app_flutter/core/widgets/logo_section.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();
  bool hidePassword = true;
  bool hideCPassword = true;

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    passwordController.dispose();
    cPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoSection(),
          Padding(
            padding: const EdgeInsets.only(
              top: 33,
              bottom: 10,
              left: 16,
              right: 16,
            ),
            child: SizedBox(
              child: Column(
                children: [
                  CustomInputItem(
                    text: "Username",
                    controller: userNameController,
                    hintText: "Ziad emad",
                    sizedboxHeight: 16,
                  ),
                  CustomInputItem(
                    text: "Email",
                    controller: emailController,
                    hintText: "Jhonsmith@gmail.com",
                    keyboardType: TextInputType.emailAddress,
                    sizedboxHeight: 16,
                  ),
                  CustomInputItem(
                    text: "Phone Number",
                    controller: phoneNumberController,
                    hintText: "01XXXXXXXXX",
                    keyboardType: TextInputType.phone,
                    sizedboxHeight: 16,
                  ),
                  CustomInputItem(
                    text: "Address",
                    controller: addressController,
                    hintText: "Portsaid Street",
                    sizedboxHeight: 16,
                  ),
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
                        hidePassword ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  CustomInputItem(
                    text: "Confirm Password",
                    controller: cPasswordController,
                    hintText: "Password",
                    sizedboxHeight: 16,
                    obscureText: hideCPassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        hideCPassword = !hideCPassword;
                        setState(() {});
                      },
                      icon: Icon(
                        hideCPassword ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomButton(
                    text: "Sign up",
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.logInScreen);
                    },
                  ),
                ],
              ),
            ),
          ),
          AlreadyHaveAccountText(
            text1: "Already have an account? ",
            text2: "Log in",
            onTap: () {
              Navigator.pushNamed(context, AppRouter.logInScreen);
            },
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
