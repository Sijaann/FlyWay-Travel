import 'package:flutter/material.dart';

import '../utils/app_large_text.dart';
import '../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(text: "Profile Page", textColor: AppColors.textColor),
      ),
    );
  }
}
