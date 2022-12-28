// ignore_for_file: file_names
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Widgets/TownCity_Screen_Body.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TownCityScreen extends GetView<TownCityScreenController> {
  const TownCityScreen({required this.countyId, super.key});
  final String countyId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<TownCityScreenController>(
          init: TownCityScreenController(countyId),
          builder: (_) {
            return TownCityScreenBody(
              countyId: countyId,
            );
          },
        ),
      ),
    );
  }
}
