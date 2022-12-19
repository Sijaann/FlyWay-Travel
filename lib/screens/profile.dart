import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/common/profile_textfield.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/app_text_small.dart';

import '../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

String username = "Sijan Lohani";
String email = "sijanlohani10@gmail.com";
String location = "Nepal";
String contact = "9806632347";

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            //BACK ARROW
            Positioned(
              child: Container(
                child: Positioned(
                  top: 25,
                  left: 21,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: AppColors.backgoundColor,
                    ),
                  ),
                ),
              ),
            ),

            //PROFILE PICTURE AND DETAILS
            Positioned(
              top: 38,
              left: 105,
              right: 105,
              child: Column(
                children: [
                  //PROFILE PICTURE
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: AppColors.primaryColor,
                    backgroundImage: AssetImage('images/profilePic.jpg'),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //FULL NAME
                  Text(
                    username,
                    style: GoogleFonts.redRose(
                        fontSize: 24, color: AppColors.backgoundColor),
                  ),

                  SizedBox(
                    height: 13,
                  ),

                  //EMAIL
                  AppTextSmall(
                    text: email,
                    textColor: AppColors.backgoundColor,
                  ),
                ],
              ),
            ),

            //SCROLLABLE VIEW
            Positioned(
              top: 299,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(22, 31, 22, 0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: AppColors.backgoundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //PROFILE TEXT
                      AppText(
                        text: "Profile",
                        textColor: AppColors.primaryColor,
                      ),

                      SizedBox(
                        height: 9,
                      ),

                      //USERNAME TEXTFIELD
                      ProfileTextField(
                        hintText: username,
                        leadingIcon: Icon(
                          Icons.person_outline,
                          size: 24,
                          color: AppColors.hintTextColor,
                        ),
                        trailingIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 24,
                            color: AppColors.hintTextColor,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //EMAIL TEXTFIELD
                      ProfileTextField(
                        hintText: email,
                        leadingIcon: Icon(
                          Icons.email_outlined,
                          size: 24,
                          color: AppColors.hintTextColor,
                        ),
                        trailingIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 24,
                            color: AppColors.hintTextColor,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //LOCATION TEXTFIELD
                      ProfileTextField(
                        hintText: location,
                        leadingIcon: Icon(
                          Icons.location_on,
                          size: 24,
                          color: AppColors.hintTextColor,
                        ),
                        trailingIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 24,
                            color: AppColors.hintTextColor,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //CONTACT TEXTFIELD
                      ProfileTextField(
                        hintText: contact,
                        leadingIcon: Icon(
                          Icons.phone,
                          size: 24,
                          color: AppColors.hintTextColor,
                        ),
                        trailingIcon: IconButton(
                          icon: Icon(
                            Icons.edit_outlined,
                            size: 24,
                            color: AppColors.hintTextColor,
                          ),
                          onPressed: () {},
                        ),
                      ),

                      SizedBox(
                        height: 21,
                      ),

                      AppText(
                          text: "Appearance",
                          textColor: AppColors.primaryColor),

                      SizedBox(
                        height: 9,
                      ),

                      ProfileTextField(
                        hintText: "Theme",
                        leadingIcon: Icon(
                          Icons.blur_circular_outlined,
                          size: 24,
                          color: AppColors.hintTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
