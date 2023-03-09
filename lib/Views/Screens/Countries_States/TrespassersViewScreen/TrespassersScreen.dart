// ignore_for_file: file_names, prefer_const_constructors

import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen-Widgets/Sub_Catagory_Screen_Body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen-Widgets/TrespassersScreen_Body.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrespassersScreen extends GetView<TrespassersController> {
  String townId;
  TrespassersScreen({ required this.townId,super.key});

  @override
  Widget build(BuildContext context) {
    controller.townId=townId;
    controller.getTrespassets();
    // String townId=Get.arguments;
    return Scaffold(
        body: GetBuilder<TrespassersController>(
      init: TrespassersController(),
      builder: (_) {
        return TrespassersScreenBody(
          categoryId: townId,
        );
      },
    ));
  }
}
