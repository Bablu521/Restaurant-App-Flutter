import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/styles.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/update_profile_view_widgets/update_profile_view_body.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.maybePop(context);
        }, icon: Icon(Icons.arrow_back_ios)) ,
        title: Text(
                "Update profile",
                style: AppStyles.style20,
              ),
              centerTitle: true,
      ),
      body: UpdateProfileViewBody(),
    );
  }
}