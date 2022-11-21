import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tick_tick_travel/screens/introduction.dart';
import 'package:tick_tick_travel/screens/login.dart';

import 'package:tick_tick_travel/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 2000,
        splash: const Image(
          image: AssetImage('images/splash1.png'),
          fit: BoxFit.cover,
        ),
        nextScreen: Introduction(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: AppColors.primaryColor);
  }
}
