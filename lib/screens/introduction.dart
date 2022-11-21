import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tick_tick_travel/common/button.dart';
import 'package:tick_tick_travel/screens/landingScreens/intro1.dart';
import 'package:tick_tick_travel/screens/landingScreens/intro2.dart';
import 'package:tick_tick_travel/utils/app_text.dart';
import 'package:tick_tick_travel/utils/colors.dart';
import 'package:tick_tick_travel/utils/small_text.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  //PageCOntroller to keep track of which page we're on
  PageController _controller = PageController();

  //Keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              Container(
                color: Colors.deepOrangeAccent,
                child: Text("3"),
              ),
            ],
          ),

          //Skip, page indicator and Next BUTTON
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Skip BUTTON
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child:
                      AppText(text: "Skip", textColor: AppColors.primaryColor),
                ),

                //Page Indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                      activeDotColor: AppColors.primaryColor,
                      dotColor: AppColors.hintTextColor),
                ),

                //Next or Done BUTTON
                onLastPage
                    ? CustomButton(
                        btnText: "Done",
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "/login");
                        },
                        hSize: 85.0,
                        vSize: 35.0,
                        radius: 50)
                    : CustomButton(
                        btnText: "Next",
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        hSize: 80.0,
                        vSize: 35.0,
                        radius: 50)
              ],
            ),
          )
        ],
      ),
    );
  }
}
