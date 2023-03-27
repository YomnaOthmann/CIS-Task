import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "CIS Team",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}
