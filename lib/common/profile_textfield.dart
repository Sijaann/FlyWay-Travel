import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class ProfileTextField extends StatelessWidget {
  final String hintText;
  final Icon leadingIcon;
  IconButton? trailingIcon;

  ProfileTextField(
      {super.key,
      required this.hintText,
      required this.leadingIcon,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: false,
      decoration: InputDecoration(
        prefixIcon: leadingIcon,
        suffixIcon: trailingIcon,
        hintText: hintText,
        hintStyle: GoogleFonts.redRose(
          fontSize: 15,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
