import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/heading_text.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage("images/Hotel Booking-cuate.png"),
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 57, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Hotels",
                  style: GoogleFonts.redRose(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                HeadingText(text: "Stay", textColor: AppColors.textColor),
                HeadingText(text: "where you", textColor: AppColors.textColor),
                HeadingText(text: "want", textColor: AppColors.textColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
