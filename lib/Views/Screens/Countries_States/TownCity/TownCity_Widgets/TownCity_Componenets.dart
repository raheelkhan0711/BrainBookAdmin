// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TownCityComponents extends GetView<TownCityScreenController> {
  const TownCityComponents({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            image,
            scale: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
