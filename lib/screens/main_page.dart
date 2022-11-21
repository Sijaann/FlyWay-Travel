import 'package:flutter/material.dart';
import 'package:tick_tick_travel/screens/flights.dart';
import 'package:tick_tick_travel/screens/home.dart';
import 'package:tick_tick_travel/screens/hotels.dart';
import 'package:tick_tick_travel/screens/profile.dart';
import 'package:tick_tick_travel/screens/search.dart';
import 'package:tick_tick_travel/utils/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //List of pages/screens
  List pages = [
    HomePage(),
    HotelsPage(),
    SearchPage(),
    FlightsPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          //two types of bottom navigation bar type, fixed and shifted
          //whith fixed you can change the background color, with shifted you can not
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hotel_outlined),
              label: 'Hotels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_outlined),
              label: 'Flights',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
      body: pages[currentIndex],
    );
  }
}
