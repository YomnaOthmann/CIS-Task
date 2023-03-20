import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.kGreen,
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0,
      backgroundColor: AppColors.kGrey,
      foregroundColor: AppColors.kGreen,
      title: const Text(
        "CIS Team",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      centerTitle: true,
    );
  }
}
