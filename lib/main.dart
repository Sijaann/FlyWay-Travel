import 'package:flutter/material.dart';
import 'package:tick_tick_travel/screens/login.dart';
import 'package:tick_tick_travel/utils/colors.dart';

void main() {
  runApp(Tick_Tick_Travel());
}

class Tick_Tick_Travel extends StatelessWidget {
  const Tick_Tick_Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tick-Tick Travel",
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgoundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor,
          )),
      home: Login(),
    );
  }
}
