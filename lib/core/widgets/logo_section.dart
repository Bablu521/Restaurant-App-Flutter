import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/core/utils/assets.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: Container(
          width: 197,
          height: 33,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppAssets.logo)),
          ),
        ),
      ),
    );
  }
}
