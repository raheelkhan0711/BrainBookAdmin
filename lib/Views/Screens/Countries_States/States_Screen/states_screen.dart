// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Core/App-Utils/TextAndButtonWidgets/textAndBuutonWidgets.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/DashBoard-Widgets/dashboard_appBar.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'States_Screens_Widgets/State_Components.dart';
import 'States_Screens_Widgets/statesScreenBody.dart';
import 'package:get/get.dart';

class StatesScreen extends GetView<StatesScreenController> {
  const StatesScreen({required this.countryId, super.key});
  final String countryId;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<StatesScreenController>(
          init: StatesScreenController(countryId),
          builder: (_) {

            return StatesScreenBody(
              countryId: countryId,
            );
          },
        ),
      ),
    );
  }
}
