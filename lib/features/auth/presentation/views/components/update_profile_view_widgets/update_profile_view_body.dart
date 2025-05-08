import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/routes/app_router.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_button.dart';
import 'package:restaurant_app_flutter/core/widgets/custom_input_item.dart';

class UpdateProfileViewBody extends StatefulWidget {
  const UpdateProfileViewBody({super.key});

  @override
  State<UpdateProfileViewBody> createState() => _UpdateProfileViewBodyState();
}

class _UpdateProfileViewBodyState extends State<UpdateProfileViewBody> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();    
    addressController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomInputItem(
            text: "Your name",
            controller: userNameController,
            hintText: "Ziad emad ",
            sizedboxHeight: 16,
          ),
          CustomInputItem(
            text: "Your email",
            controller: emailController,
            hintText: "Jhonsmith@gmail.com",
            sizedboxHeight: 16,
          ),
          CustomInputItem(
            text: "Phone Number",
            controller: phoneNumberController,
            hintText: "01XXXXXXXXX",
            sizedboxHeight: 16,
            keyboardType: TextInputType.phone,
          ),
          CustomInputItem(
            text: "Your address",
            controller: addressController,
            hintText: "Portsaid Street",
            sizedboxHeight: 40,
          ),
          CustomButton(
            text: "Update information",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.logInScreen);
            },
          ),
        ],
      ),
    );
  }
}
