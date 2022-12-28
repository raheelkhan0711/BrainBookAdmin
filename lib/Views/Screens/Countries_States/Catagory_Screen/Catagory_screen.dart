// ignore_for_file: prefer_const_constructors, file_names

import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/States_Catagory_Screen_Widgets/Catagory_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_Screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryScreen extends GetView<CatagoryScreenController> {
  const CatagoryScreen({required this.townCityId, super.key});
  final String townCityId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GetBuilder<CatagoryScreenController>(
        init: CatagoryScreenController(townCityId),
        builder: (_) {
          return CatagoryScreenBody(
            townCityId: townCityId,
          );
        },
      )),
    );
  }
}
