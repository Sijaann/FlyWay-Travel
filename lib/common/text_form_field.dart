import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  //Textfield properties
  final String hintText;
  final bool val;
  final Icon? leadingIcon;
  final double radius;
  final Color enableColor;

  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.val,
      this.leadingIcon,
      required this.radius,
      required this.enableColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColors.textColor),
      cursorColor: AppColors.primaryColor,
      obscureText: val,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.redRose(
          color: AppColors.hintTextColor,
          fontSize: 18,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: enableColor,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        prefixIcon: leadingIcon,
      ),
    );
  }
}
