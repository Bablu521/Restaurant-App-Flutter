import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: Container(
        width: 355,
        height: 355,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.onboardingImage,
            ),
          ),
        ),
      ),
    );
  }
}
