// ignore_for_file: file_names, prefer_const_constructors

import 'package:brain_book_admin/Views/Screens/Countries_States/Second_Level_Catogry_Screen/Sub_Catagory_Screen-Widgets/SeconLevel_Catagory_Screen_Body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Second_Level_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Third_Level_Catogry_Screen/Sub_Catagory_Screen-Widgets/ThirdLevel_Catagory_Screen_Body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ThirdSub_Catagory_Screen_Controller.dart';

class ThirdLevelSubCatagoryScreen extends GetView<ThirdLevelSubCatagoryScreenController> {
  const ThirdLevelSubCatagoryScreen({required this.categoryId,super.key});
  final String categoryId;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Get.width,70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back)),
        ],
      ),

      ),
        body: GetBuilder<ThirdLevelSubCatagoryScreenController>(
      init: ThirdLevelSubCatagoryScreenController(categoryId),
      builder: (_) {
        return ThirdLevelSubCatagoryScreenBody(
          categoryId: categoryId,
        );
      },
    ));
  }
}
