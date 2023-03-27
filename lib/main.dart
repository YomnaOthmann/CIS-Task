import 'package:cis_app_design/constants/colors.dart';
import 'package:cis_app_design/view/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const CisApp());
}

class CisApp extends StatelessWidget {
  const CisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.kGreen,
            statusBarIconBrightness: Brightness.dark,
          ),
          elevation: 0,
          backgroundColor: AppColors.kGrey,
          foregroundColor: AppColors.kGreen,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: AppColors.kGrey,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(
            color: Colors.white,
          ),
          selectedItemColor: AppColors.kGreen,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.kGreen,
          ),
          backgroundColor: AppColors.kGrey,
        ),
        textTheme: const TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const NavigationLayout(),
    );
  }
}
