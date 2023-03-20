import 'package:cis_app_design/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String imagePath = "assets/images/events_images";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int sliderIndex = 0;

  List images = [
    "${HomeScreen.imagePath}/beyondearth.webp",
    "${HomeScreen.imagePath}/chessendgame.webp",
    "${HomeScreen.imagePath}/gateway.webp",
    "${HomeScreen.imagePath}/hackyourfuture5.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            "Our Events",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                images[index],
                width: double.maxFinite,
                fit: BoxFit.fill,
              ),
            ),
          ),
          options: CarouselOptions(
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  sliderIndex = index;
                });
              },
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.easeInOut,
              initialPage: 0,
              viewportFraction: 1),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedSmoothIndicator(
            activeIndex: sliderIndex,
            count: images.length,
            axisDirection: Axis.horizontal,
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
            effect: const SlideEffect(
              activeDotColor: AppColors.kGreen,
              dotHeight: 13,
              dotWidth: 13,
            ),
          ),
        )
      ],
    );
  }
}
