import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const String imagePath = "assets/images/events_images";
  List images = [
    "$imagePath/beyondearth.webp",
    "$imagePath/chessendgame.webp",
    "$imagePath/gateway.webp",
    "$imagePath/hackyourfuture5.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Our Events"),
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) => ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              images[index],
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
          ),
          options: CarouselOptions(
            height: 200,
            //autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: true,
            padEnds: true,
            initialPage: 0,
          ),
        )
      ],
    );
  }
}
