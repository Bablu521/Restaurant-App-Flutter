import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundColor: Color(0xff9B9B9B), radius: 4),
            SizedBox(width: 8),
            CircleAvatar(backgroundColor: Color(0xff9B9B9B), radius: 4),
            SizedBox(width: 8),
            CircleAvatar(backgroundColor: AppColors.mainColor, radius: 4),
          ],
        ),
      ),
    );
  }
}
