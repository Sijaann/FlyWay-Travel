import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  //Text Properties
  double size;
  final String text;
  final Color textColor;

  LargeText({
    super.key,
    this.size = 36.0,
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
