import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';

class PinCodeFields extends StatelessWidget {
  final TextEditingController otpController;
  final Function(String) onChanged;
  const PinCodeFields({super.key , required this.onChanged,required this.otpController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: PinCodeTextField(
        autoDisposeControllers: true,
        controller: otpController,
        hintCharacter: "—",
        hintStyle: TextStyle(color: Color(0xff5B5B5B)),
        appContext: context,
        length: 5,
        keyboardType: TextInputType.number,
        enableActiveFill: true,
        onChanged: onChanged,
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
        textStyle: AppStyles.style13.copyWith(fontSize: 18,),
      ),
    );
  }
}
