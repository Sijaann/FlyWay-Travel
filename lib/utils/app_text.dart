import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  //text Properties
  double size;
  final String text;
  final Color textColor;

  AppText({
    super.key,
    this.size = 20,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.redRose(
        color: textColor,
        fontSize: size,
      ),
    );
  }
}
