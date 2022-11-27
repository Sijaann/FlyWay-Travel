import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/heading_text.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage("images/Flight Booking-pana 1.png"),
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 57, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Flights",
                  style: GoogleFonts.redRose(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                HeadingText(text: "Travel", textColor: AppColors.textColor),
                HeadingText(text: "around the", textColor: AppColors.textColor),
                HeadingText(text: "world with", textColor: AppColors.textColor),
                HeadingText(text: "just a tap", textColor: AppColors.textColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
