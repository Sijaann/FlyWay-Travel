import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  //Textfield properties
  final String hintText;
  final bool val;
  final Icon leadingIcon;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.val,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: TextFormField(
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
              color: AppColors.primaryColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: leadingIcon,
        ),
      ),
    );
  }
}
