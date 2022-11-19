import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/common/button.dart';
import 'package:tick_tick_travel/common/text_form_field.dart';
import 'package:tick_tick_travel/utils/app_large_text.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/heading_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Application Banner
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 57, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //App Logo
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/Logo.png'),
                    radius: 80.0,
                  ),

                  //Tick-Tick Text
                  LargeText(
                    text: "Tick-Tick",
                    textColor: AppColors.largeTextColor,
                  ),

                  //Travel Text
                  AppText(
                    text: "Travel",
                    textColor: AppColors.largeTextColor,
                  ),
                ],
              ),
            ),
          ),

          //Login Text
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 46, 0, 33),
            child: HeadingText(
              text: "Login",
              textColor: AppColors.primaryColor,
            ),
          ),

          //Email TextField
          CustomTextField(
            hintText: 'Email',
            leadingIcon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 26,
            ),
            val: false,
          ),
          SizedBox(height: 30),

          //Password Textfield
          CustomTextField(
            hintText: 'Password',
            leadingIcon: Icon(
              Icons.lock_outline,
              color: Colors.black,
              size: 26,
            ),
            val: true,
          ),

          //ForgotPassword? TEXTBUTTON
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 17, 33, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    final snackBar = SnackBar(
                      backgroundColor: AppColors.primaryColor,
                      content: const Text('Working'),
                    );

                    // Find the ScaffoldMessenger in the widget tree
                    // and use it to show a SnackBar.
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.redRose(
                      color: AppColors.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Login Button
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: CustomButton(
              btnText: "Login",
              onTap: () {},
              hSize: 350,
              vSize: 44,
            ),
          ),

          //Login With Google Button
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 17, 30, 0),
            child: CustomButton(
              btnText: "Login With Google",
              onTap: () {},
              hSize: 350,
              vSize: 44,
            ),
          ),

          SizedBox(
            height: 17.0,
          ),

          //Don't have an account?Signup TEXT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.redRose(
                  color: AppColors.textColor,
                  fontSize: 15.0,
                ),
              ),

              //Signup TEXTBUTTON
              GestureDetector(
                onTap: () {
                  // final snackBar = SnackBar(
                  //   backgroundColor: AppColors.primaryColor,
                  //   content: const Text('Working'),
                  // );

                  // // Find the ScaffoldMessenger in the widget tree
                  // // and use it to show a SnackBar.
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  "Signup",
                  style: GoogleFonts.redRose(
                    color: AppColors.primaryColor,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
