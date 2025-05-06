import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/auth/presentation/views/components/log_in_view_widgets.dart/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInViewBody(),
    );
  }
}