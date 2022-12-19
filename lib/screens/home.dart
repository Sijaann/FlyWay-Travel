import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:tick_tick_travel/common/text_form_field.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/app_text_small.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var hotelName = {
  "atlantis-hotel-dubai.jpg": "Atlantis",
  "hotel1.jpg": "Burj Al Arab",
  "hotel2.jpg": "Bellagio Hotel",
  "hotel3.jpg": "The Taj Mahal Palace",
  "hotel4.jpg": "Soaltee Hotel"
};

var hotelRating = {
  "atlantis-hotel-dubai.jpg": "4.5",
  "hotel1.jpg": "4.5",
  "hotel2.jpg": "4",
  "hotel3.jpg": "4.5",
  "hotel4.jpg": "4"
};

var hotelLocation = {
  "atlantis-hotel-dubai.jpg": "Dubai, UAE",
  "hotel1.jpg": "Dubai, UAE",
  "hotel2.jpg": "Las Vegas, USA",
  "hotel3.jpg": "Mumbai, India",
  "hotel4.jpg": "Kathmandu, Nepal"
};

var hotelPrice = {
  "atlantis-hotel-dubai.jpg": "Rs.70000/Night",
  "hotel1.jpg": "Rs.100000/Night",
  "hotel2.jpg": "Rs.45000/Night",
  "hotel3.jpg": "Rs.50000/Night",
  "hotel4.jpg": "Rs.40000/Night"
};

var country = {
  "nepal.jpg": "Nepal",
  "China.jpg": "China",
  "USA.jpg": "USA",
  "UAE.jpg": "UAE",
  "Netherlands.jpg": "Netherlands",
};

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 31, left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24.5,
                        // child: ClipRRect(
                        //   child: Image.asset('images/profilePic.jpg'),
                        //   borderRadius: BorderRadius.circular(24.5),
                        // ),
                        backgroundImage: AssetImage('images/profilePic.jpg'),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //WELCOME TEXT
                          AppTextSmall(
                              text: "WELCOME 👋",
                              textColor: AppColors.textColor),

                          //USERNAME
                          AppText(
                              text: "Sijan Lohani",
                              textColor: AppColors.textColor)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 108,
                  ),

                  //Notification Button
                  InkWell(
                    onTap: () {},
                    splashColor: AppColors.hintTextColor,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.notifications,
                        size: 25,
                        color: AppColors.backgoundColor,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),

              //WHERE TO? TEXTFIELD
              CustomTextField(
                hintText: "Where To?",
                enableColor: AppColors.hintTextColor,
                val: false,
                radius: 10,
                leadingIcon: Icon(
                  Icons.location_on,
                  color: AppColors.primaryColor,
                ),
              ),

              SizedBox(
                height: 29,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TOP STAYS TEXT
                  AppText(text: "Top Stays", textColor: AppColors.textColor),

                  SizedBox(
                    height: 29.0,
                  ),

                  //HOTEL PICS LIST VIEW
                  SizedBox(
                    height: 250,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        //MAIN CONTAINER OUTSIDE IMAGE
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: () {
                              final snackBar = SnackBar(
                                backgroundColor: AppColors.primaryColor,
                                content: const Text('Working'),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            child: Container(
                              width: 225,
                              height: 235,
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.backgoundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    spreadRadius: 3,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),

                              //CONTAINER WITH THE IMAGE AND ALL
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 131,
                                    width: 216,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/${hotelName.keys.elementAt(index)}"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 8,
                                  ),

                                  //HOTEL NAME
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 7, right: 7),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppTextSmall(
                                          text:
                                              hotelName.values.elementAt(index),
                                          textColor: AppColors.textColor,
                                        ),

                                        //RATING ICON
                                        Icon(
                                          Icons.star_rounded,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                  ),

                                  //HOTEL LOCATION AND RATING NUMBER
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //HOTEL LOCATION
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: AppColors.primaryColor,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),

                                            //HOTEL LOCATION
                                            Text(
                                              hotelLocation.values
                                                  .elementAt(index),
                                              style: GoogleFonts.redRose(
                                                fontSize: 10,
                                                color: AppColors.hintTextColor,
                                              ),
                                            ),
                                          ],
                                        ),

                                        //RATING NUMBER
                                        Text(
                                          hotelRating.values.elementAt(index),
                                          style: GoogleFonts.redRose(
                                              fontSize: 10,
                                              color: AppColors.hintTextColor),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 24,
                                  ),

                                  //HOTEL PRICE
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 0, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //HOTEL PRICE
                                        AppTextSmall(
                                          text: hotelPrice.values
                                              .elementAt(index),
                                          textColor: AppColors.primaryColor,
                                        ),

                                        //ARROW ICON
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward_rounded,
                                            color: AppColors.backgoundColor,
                                            size: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  //EXPLORE SECTION
                  SizedBox(
                    height: 33,
                  ),

                  //EXPLORE TEXT
                  AppText(text: "Explore", textColor: AppColors.textColor),

                  SizedBox(
                    height: 29,
                  ),

                  SizedBox(
                    height: 250,
                    width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: () {
                                final snackBar = SnackBar(
                                  backgroundColor: AppColors.primaryColor,
                                  content: const Text('Working'),
                                );

                                // Find the ScaffoldMessenger in the widget tree
                                // and use it to show a SnackBar.
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: Container(
                                height: 250,
                                width: 225,
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "images/${country.keys.elementAt(index)}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.8),
                                          spreadRadius: 3,
                                          blurRadius: 2,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 24,
                                    left: 84,
                                    child: AppText(
                                        text: country.values.elementAt(index),
                                        textColor: AppColors.backgoundColor),
                                  )
                                ]),
                              ),
                            ),
                          );
                        })),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
