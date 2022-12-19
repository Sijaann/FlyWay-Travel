import 'package:flutter/material.dart';
import 'package:tick_tick_travel/common/button.dart';
import 'package:tick_tick_travel/common/text_form_field.dart';
import 'package:tick_tick_travel/utils/app_large_text.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/heading_text.dart';
import 'package:tick_tick_travel/utils/small_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),

              //Tick-Tick TEXT
              LargeText(text: "FlyWay", textColor: AppColors.largeTextColor),

              //Travel TEXT
              AppText(text: "Travel", textColor: AppColors.largeTextColor),

              const SizedBox(
                height: 40.0,
              ),

              //Signup TEXT
              HeadingText(text: "Signup", textColor: AppColors.primaryColor),

              const SizedBox(
                height: 40.0,
              ),

              //Signup with Google BUTTON
              CustomButton(
                btnText: "Signup with Google",
                onTap: () {},
                hSize: 350,
                vSize: 44,
                radius: 50.0,
              ),

              const SizedBox(
                height: 20.0,
              ),

              //OR TEXT
              AppText(text: "OR", textColor: AppColors.textColor),

              const SizedBox(
                height: 20.0,
              ),

              //First Name TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextField(
                  hintText: 'First Name',
                  enableColor: AppColors.primaryColor,
                  val: false,
                  radius: 50.0,
                ),
              ),

              const SizedBox(
                height: 23.0,
              ),

              //Last Name TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextField(
                  hintText: 'Last Name',
                  enableColor: AppColors.primaryColor,
                  val: false,
                  radius: 50.0,
                ),
              ),

              const SizedBox(
                height: 23.0,
              ),

              //Email TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextField(
                  hintText: 'Email',
                  enableColor: AppColors.primaryColor,
                  leadingIcon: Icon(
                    Icons.person_outline,
                    color: AppColors.hintTextColor,
                    size: 26,
                  ),
                  val: false,
                  radius: 50.0,
                ),
              ),

              const SizedBox(
                height: 23.0,
              ),

              //Pasword TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextField(
                  hintText: 'Password',
                  enableColor: AppColors.primaryColor,
                  leadingIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.hintTextColor,
                    size: 26,
                  ),
                  val: true,
                  radius: 50.0,
                ),
              ),

              const SizedBox(
                height: 23.0,
              ),

              //Signup Button
              CustomButton(
                btnText: "Signup",
                onTap: () {},
                hSize: 350,
                vSize: 44,
                radius: 50.0,
              ),

              const SizedBox(
                height: 23.0,
              ),

              //Already have an account?Login TEXT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(
                      text: "Already have an account?",
                      textColor: AppColors.textColor),

                  //Login BUTTON
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, "/login"),
                    child: SmallText(
                        text: "Login", textColor: AppColors.primaryColor),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
