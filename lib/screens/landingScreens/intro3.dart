import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/app_large_text.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/heading_text.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/Flying around the world-cuate.png"),
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 57),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  LargeText(text: "Time", textColor: AppColors.primaryColor),
                  AppText(text: "To", textColor: AppColors.primaryColor),
                  LargeText(text: "Travel", textColor: AppColors.primaryColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
