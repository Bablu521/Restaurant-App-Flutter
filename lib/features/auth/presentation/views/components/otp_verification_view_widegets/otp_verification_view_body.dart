import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_back_app_bar.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/otp_verification_view_widegets/resend_timer_section.dart';

class OTPVerificationViewBody extends StatefulWidget {

  const OTPVerificationViewBody({super.key});

  @override
  State<OTPVerificationViewBody> createState() => _OTPVerificationViewBodyState();
}

class _OTPVerificationViewBodyState extends State<OTPVerificationViewBody> {
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    otpController.dispose();
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
                  SizedBox(
                    height: 40,
                    child: PinCodeTextField(
                      appContext: context,
                      controller: otpController,
                      length: 5,
                      keyboardType: TextInputType.number,
                      enableActiveFill: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 40,
                        fieldWidth: 47,
                        selectedFillColor: AppColors.textFormFieldbg,
                        activeFillColor: AppColors.textFormFieldbg,
                        inactiveFillColor: AppColors.textFormFieldbg,
                        activeColor: AppColors.textFormFieldbg,
                        inactiveColor: AppColors.textFormFieldbg,
                        selectedColor: AppColors.textFormFieldbg,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      textStyle: AppStyles.style13.copyWith(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            text: "Confirm code",
            onPressed: () {
              print(otpController.text);
              otpController.clear();
            },
          ),
          SizedBox(height: 16),
          ResendTimerSection(),
        ],
      ),
    );
  }
}
