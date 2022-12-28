// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County%20Widgets/County_Screen_Body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountyScreen extends GetView<CountyScreenController> {
  const CountyScreen({
    super.key,
    required this.stateId,
  });
  final String stateId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<CountyScreenController>(
          init: CountyScreenController(stateId),
          builder: (_) {
            return CountyScreenBody(stateId: stateId);
          },
        ),
      ),
    );
  }
}
