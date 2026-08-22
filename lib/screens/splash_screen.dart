import 'package:flutter/material.dart';
import 'package:fun_finder/core/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.background)
        ],
      ),
    );
  }
}
