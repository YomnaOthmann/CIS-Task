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
  static const String imagePath = "assets/images";
  int currentIndex = 0;
  bool isSelected = false;
  List<Widget> screens = [
    const HomeScreen(),
    const EventsScreen(),
    const CommitteesScreen(),
    const BolgsScreen(),
    const VideosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: CustomAppBar(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 12,
        currentIndex: currentIndex,
        onTap: (index) {
          onNavItemTap(index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$imagePath/audience.png",
              color: currentIndex == 2 ? AppColors.kGreen : Colors.white,
              width: 30,
              height: 30,
            ),
            label: "Committees",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$imagePath/user-profile.png",
              width: 25,
              height: 25,
              color: currentIndex == 3 ? AppColors.kGreen : Colors.white,
            ),
            label: "Blogs",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$imagePath/youtube.png",
              width: 25,
              height: 25,
              color: currentIndex == 4 ? AppColors.kGreen : Colors.white,
            ),
            label: "Videos",
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.kGrey,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0),
          child: ListView(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "$imagePath/CISLogo.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                  Icons.calendar_month_rounded,
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
                leading: Image.asset(
                  "$imagePath/audience.png",
                  color: AppColors.kGreen,
                  height: 30,
                  width: 30,
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
                leading: Image.asset(
                  "$imagePath/user-profile.png",
                  color: AppColors.kGreen,
                  height: 30,
                  width: 30,
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
                leading: Image.asset(
                  "$imagePath/youtube.png",
                  color: AppColors.kGreen,
                  height: 30,
                  width: 30,
                ),
                title: const Text("Videos"),
              ),
            ],
          ),
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
