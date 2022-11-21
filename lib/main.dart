import 'package:flutter/material.dart';
import 'package:tick_tick_travel/screens/login.dart';
import 'package:tick_tick_travel/screens/main_page.dart';
import 'package:tick_tick_travel/screens/signin_options.dart';
import 'package:tick_tick_travel/screens/signup.dart';
import 'package:tick_tick_travel/screens/splash.dart';
import 'package:tick_tick_travel/utils/colors.dart';

void main() {
  runApp(TickTickTravel());
}

class TickTickTravel extends StatelessWidget {
  const TickTickTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tick-Tick Travel",
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgoundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.orange,
            ),
          ),
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor,
          )),
      routes: {
        "/signinOption": (context) => SignInOption(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
        "/mainPage": (context) => MainPage(),
      },
      home: const SplashScreen(),
    );
  }
}
