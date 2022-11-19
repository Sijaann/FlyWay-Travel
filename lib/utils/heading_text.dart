import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  //Text Properties
  double size;
  final String text;
  final Color textColor;

  HeadingText({
    super.key,
    this.size = 32,
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
