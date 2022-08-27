// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Scaffold(
        body: CarouselSlider(
          items: [
            Image.network(
              "https://staging.api.happythoughts.in/assets/3551a88a-2bed-47f5-837b-9dfd229bce85",
              fit: BoxFit.fitWidth,
            ),
            Image.network(
              "https://staging.api.happythoughts.in/assets/d4096fbe-fcdd-4244-8efc-8a51ec25dd28",
              fit: BoxFit.fitWidth,
            ),
            Image.network(
              "https://staging.api.happythoughts.in/assets/0d220cc9-d8c0-4614-b7f8-920debeb5152",
              fit: BoxFit.fitWidth,
            ),
          ],
          options: CarouselOptions(
            autoPlayInterval: Duration(seconds: 10),
            autoPlay: true,
            height: 250,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
        ),
      ),
    );
  }
}
