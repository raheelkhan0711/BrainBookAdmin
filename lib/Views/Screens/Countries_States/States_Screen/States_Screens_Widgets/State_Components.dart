// ignore_for_file: file_names
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StatesComponents extends GetView<StatesScreenController> {
  const StatesComponents({
    Key? key,
    required this.image,
    required this.title,
    required this.countryId,
  }) : super(key: key);
  final String image;
  final String title;
  final String countryId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 140,
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
            scale: 1.5,
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
