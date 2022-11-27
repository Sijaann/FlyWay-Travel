import 'package:flutter/material.dart';
import 'package:tick_tick_travel/utils/colors.dart';

import '../utils/app_large_text.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(text: "Search Page", textColor: AppColors.textColor),
      ),
    );
  }
}
