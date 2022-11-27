import 'package:flutter/material.dart';
import 'package:tick_tick_travel/common/button.dart';
import 'package:tick_tick_travel/utils/app_large_text.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class SignInOption extends StatefulWidget {
  const SignInOption({super.key});

  @override
  State<SignInOption> createState() => _SignInOptionState();
}

class _SignInOptionState extends State<SignInOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: AssetImage("images/intro1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 46.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //App Logo
                  const Image(
                    image: AssetImage('images/logo1.png'),
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 9.0,
                  ),

                  //Tick-Tick TEXT
                  LargeText(
                      text: "FlyWay", textColor: AppColors.largeTextColor),

                  //Travel TEXT
                  AppText(text: "Travel", textColor: AppColors.largeTextColor),
                  const SizedBox(
                    height: 59.0,
                  ),

                  //Book Hotel and Flight TEXT
                  AppText(
                      text: "Book Hotel and Flights",
                      textColor: AppColors.textColor),
                  AppText(
                      text: "Travel with ease", textColor: AppColors.textColor),

                  const SizedBox(
                    height: 84.0,
                  ),

                  SizedBox(
                    width: 299.0,
                    height: 44.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/signup");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                            width: 3.0,
                            style: BorderStyle.solid,
                            color: AppColors.primaryColor),
                      ),
                      child: AppText(text: "Signup", textColor: Colors.white),
                    ),
                  ),

                  const SizedBox(
                    height: 34.0,
                  ),

                  CustomButton(
                      btnText: "Login",
                      onTap: (() =>
                          Navigator.pushReplacementNamed(context, "/login")),
                      hSize: 299.0,
                      vSize: 44.0,
                      radius: 10.0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
