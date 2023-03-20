import 'package:cis_app_design/view/layout/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CisApp());
}

class CisApp extends StatelessWidget {
  const CisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: const NavigationLayout(),
    );
  }
}
