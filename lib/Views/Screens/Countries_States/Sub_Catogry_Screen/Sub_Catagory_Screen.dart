// ignore_for_file: file_names, prefer_const_constructors

import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen-Widgets/Sub_Catagory_Screen_Body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCatagoryScreen extends GetView<SubCatagoryScreenController> {
  const SubCatagoryScreen({required this.categoryId, super.key});
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<SubCatagoryScreenController>(
      init: SubCatagoryScreenController(categoryId),
      builder: (_) {
        return SubCatagoryScreenBody(
          categoryId: categoryId,
        );
      },
    ));
  }
}
