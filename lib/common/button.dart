import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class CustomButton extends StatelessWidget {
  //Button properties
  final String btnText;
  final VoidCallback onTap;
  final double hSize;
  final double vSize;
  CustomButton(
      {super.key,
      required this.btnText,
      required this.onTap,
      required this.hSize,
      required this.vSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hSize,
      height: vSize,
      child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            btnText,
            style: GoogleFonts.redRose(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
    );
  }
}
