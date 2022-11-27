import 'package:flutter/material.dart';
import 'package:tick_tick_travel/utils/colors.dart';

import '../utils/app_large_text.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({super.key});

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(text: "Hotels Page", textColor: AppColors.textColor),
      ),
    );
  }
}
