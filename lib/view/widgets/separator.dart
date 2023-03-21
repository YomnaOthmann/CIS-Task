import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.kGreen,
      ),
    );
  }
}
