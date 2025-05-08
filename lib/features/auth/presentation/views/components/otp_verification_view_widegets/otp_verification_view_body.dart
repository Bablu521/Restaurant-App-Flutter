import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_back_app_bar.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/otp_verification_view_widegets/pin_code_fields.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/otp_verification_view_widegets/resend_timer_section.dart';

class OTPVerificationViewBody extends StatefulWidget {
  const OTPVerificationViewBody({super.key});

  @override
  State<OTPVerificationViewBody> createState() =>
      _OTPVerificationViewBodyState();
}

class _OTPVerificationViewBodyState extends State<OTPVerificationViewBody> {
  final TextEditingController otpController = TextEditingController();
  String otp = "";
  @override


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
            padding: const EdgeInsets.symmetric(horizontal: 31.5),
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(AppAssets.verifyEmailImage),
                  ),
                  SizedBox(height: 40),
                  Text("Verify email address", style: AppStyles.style24),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Verification code sent to ",
                        style: AppStyles.style13,
                      ),
                      Text(
                        "mmha@gmail.com",
                        style: AppStyles.style13.copyWith(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  PinCodeFields(
                    otpController: otpController,
                    onChanged: (value) {
                      otp = value;
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            text: "Confirm code",
            onPressed: () {
              // print(otp);
              otpController.clear();
              Navigator.pushNamed(context, AppRouter.resetPasswordScreen);
            },
          ),
          SizedBox(height: 16),
          ResendTimerSection(),
        ],
      ),
    );
  }
}
