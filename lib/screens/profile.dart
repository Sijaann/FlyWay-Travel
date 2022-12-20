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

class _ProfilePageState extends State<ProfilePage> {
  String username = "Sijan Lohani";
  String email = "sijanlohani10@gmail.com";
  String location = "Nepal";
  String contact = "9806632347";

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  final contactController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    usernameController.dispose();
    emailController.dispose();
    locationController.dispose();
    contactController.dispose();
    super.dispose();
  }

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
              left: 0,
              right: 0,
              bottom: 0,
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
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
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
                          onPressed: () {
                            //ALERT DIALOG to change USER'S NAME
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Change your name'),
                                content: TextField(
                                  controller: usernameController,
                                  style: TextStyle(color: AppColors.textColor),
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    hintStyle: GoogleFonts.redRose(
                                      fontSize: 15,
                                      color: AppColors.hintTextColor,
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),

                                  //CHANGING USERNAME
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);

                                      if (usernameController.text == username) {
                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text:
                                                "Username can not be the same as previous",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        setState(() {
                                          username = "$usernameController.text";
                                        });

                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text: "User\'s name changed",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
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
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Change your Email'),
                                content: TextField(
                                  controller: emailController,
                                  style: TextStyle(color: AppColors.textColor),
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: GoogleFonts.redRose(
                                      fontSize: 15,
                                      color: AppColors.hintTextColor,
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Cancel');
                                    },
                                    child: const Text('Cancel'),
                                  ),

                                  //CHANGING USERNAME
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'OK');

                                      if (emailController.text == email) {
                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text:
                                                "Email can not be the same as previous",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        setState(() {
                                          email = "$emailController.text";
                                        });

                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text: "Email changed",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
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
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Change your Location'),
                                content: TextField(
                                  controller: locationController,
                                  style: TextStyle(color: AppColors.textColor),
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    hintText: "Location",
                                    hintStyle: GoogleFonts.redRose(
                                      fontSize: 15,
                                      color: AppColors.hintTextColor,
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Cancel');
                                    },
                                    child: const Text('Cancel'),
                                  ),

                                  //CHANGING USERNAME
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'OK');

                                      if (locationController.text == location) {
                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text:
                                                "Location can not be the same as previous",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        setState(() {
                                          location = "$locationController.text";
                                        });

                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text: "Location changed",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
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
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Change your Contact Number'),
                                content: TextField(
                                  controller: contactController,
                                  style: TextStyle(color: AppColors.textColor),
                                  cursorColor: AppColors.primaryColor,
                                  decoration: InputDecoration(
                                    hintText: "Contact Number",
                                    hintStyle: GoogleFonts.redRose(
                                      fontSize: 15,
                                      color: AppColors.hintTextColor,
                                    ),
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Cancel');
                                    },
                                    child: const Text('Cancel'),
                                  ),

                                  //CHANGING USERNAME
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'OK');

                                      if (contactController.text == contact) {
                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text:
                                                "Contact can not be the same as previous",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        setState(() {
                                          contact = "$contactController.text";
                                        });

                                        final snackBar = SnackBar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          content: AppTextSmall(
                                            text: "Contact changed",
                                            textColor: AppColors.backgoundColor,
                                          ),
                                        );

                                        // Find the ScaffoldMessenger in the widget tree
                                        // and use it to show a SnackBar.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 21,
                      ),

                      AppText(
                          text: "Appearance",
                          textColor: AppColors.primaryColor),

                      SizedBox(
                        height: 15,
                      ),

                      //THEME CONTAINER
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.5, color: AppColors.hintTextColor),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: Row(
                            children: [
                              //THEME ICON
                              Icon(
                                Icons.color_lens_outlined,
                                size: 24,
                                color: AppColors.hintTextColor,
                              ),

                              SizedBox(
                                width: 10,
                              ),

                              //THEME TEXT
                              AppTextSmall(
                                text: "Theme",
                                textColor: AppColors.textColor,
                              ),

                              //SWITCH BUTTON
                              // Switch(
                              //     value: switchVal,
                              //     onChanged: (newValue) {
                              //       setState(() {
                              //         switchVal = newValue;
                              //       });
                              //     }),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 21,
                      ),

                      //BOOKING/TICKETS TEXT
                      AppText(
                        text: "Bookings/Tickets",
                        textColor: AppColors.primaryColor,
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.5, color: AppColors.hintTextColor),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 12),
                          child: Row(
                            children: [
                              //THEME ICON
                              Icon(
                                Icons.bookmark_added_outlined,
                                size: 24,
                                color: AppColors.hintTextColor,
                              ),

                              SizedBox(
                                width: 10,
                              ),

                              //THEME TEXT
                              AppTextSmall(
                                text: "Bookings",
                                textColor: AppColors.textColor,
                              ),

                              //SWITCH BUTTON
                              // Switch(
                              //     value: switchVal,
                              //     onChanged: (newValue) {
                              //       setState(() {
                              //         switchVal = newValue;
                              //       });
                              //     }),
                            ],
                          ),
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
