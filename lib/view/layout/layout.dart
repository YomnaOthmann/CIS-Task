import 'package:cis_app_design/constants/colors.dart';
import 'package:cis_app_design/view/screens/blogs_screen.dart';
import 'package:cis_app_design/view/screens/committies_screen.dart';
import 'package:cis_app_design/view/screens/events_screen.dart';
import 'package:cis_app_design/view/screens/home_screen.dart';
import 'package:cis_app_design/view/screens/videos_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class NavigationLayout extends StatefulWidget {
  const NavigationLayout({super.key});

  @override
  State<NavigationLayout> createState() => _NavigationLayoutState();
}

class _NavigationLayoutState extends State<NavigationLayout> {
  int currentIndex = 0;
  bool isSelected = false;
  List<Widget> screens = [
    HomeScreen(),
    const EventsScreen(),
    const CommitteesScreen(),
    const BolgsScreen(),
    const VideosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: CustomAppBar(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        unselectedFontSize: 10,
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        selectedFontSize: 12,
        selectedItemColor: AppColors.kGreen,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.kGreen,
        ),
        backgroundColor: AppColors.kGrey,
        currentIndex: currentIndex,
        onTap: (index) {
          onNavItemTap(index);
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Committees",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Blogs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Videos",
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.kGrey,
        elevation: 10,
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                "assets/images/CISLogo.png",
              ),
            ),
            ListTile(
              iconColor: AppColors.kGreen,
              style: ListTileStyle.list,
              onTap: () {
                onItemTap(0);
              },
              horizontalTitleGap: 1,
              textColor: AppColors.kGreen,
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text("Home"),
            ),
            ListTile(
              iconColor: AppColors.kGreen,
              style: ListTileStyle.list,
              onTap: () {
                onItemTap(1);
              },
              horizontalTitleGap: 1,
              textColor: AppColors.kGreen,
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text("Events"),
            ),
            ListTile(
              iconColor: AppColors.kGreen,
              style: ListTileStyle.list,
              onTap: () {
                onItemTap(2);
              },
              textColor: AppColors.kGreen,
              horizontalTitleGap: 1,
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text("Committies"),
            ),
            ListTile(
              iconColor: AppColors.kGreen,
              style: ListTileStyle.list,
              textColor: AppColors.kGreen,
              onTap: () {
                onItemTap(3);
                Container(
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(0.8)),
                );
              },
              horizontalTitleGap: 1,
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text("Blogs"),
            ),
            ListTile(
              iconColor: AppColors.kGreen,
              style: ListTileStyle.list,
              onTap: () {
                onItemTap(4);
              },
              horizontalTitleGap: 1,
              textColor: AppColors.kGreen,
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text("Videos"),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }

  onItemTap(int index) {
    setState(() {
      Navigator.pop(context);
      currentIndex = index;
    });
  }

  onNavItemTap(index) {
    setState(() {
      currentIndex = index;
      isSelected = true;
    });
  }
}
