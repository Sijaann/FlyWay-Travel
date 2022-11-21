import 'package:flutter/material.dart';
import 'package:tick_tick_travel/utils/colors.dart';

import '../utils/app_large_text.dart';

class FlightsPage extends StatefulWidget {
  const FlightsPage({super.key});

  @override
  State<FlightsPage> createState() => _FlightsPageState();
}

class _FlightsPageState extends State<FlightsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:
              LargeText(text: "Flights Page", textColor: AppColors.textColor),
        ),
      ),
    );
  }
}
