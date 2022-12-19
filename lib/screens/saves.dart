import 'package:flutter/material.dart';
import 'package:tick_tick_travel/utils/colors.dart';

import '../utils/app_large_text.dart';

class Saves extends StatefulWidget {
  const Saves({super.key});

  @override
  State<Saves> createState() => _SavesState();
}

class _SavesState extends State<Saves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('profilePic/.png'),
                  radius: 80.0,
                ),
                Column(
                  children: [],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
