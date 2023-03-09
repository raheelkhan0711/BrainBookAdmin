// ignore_for_file: file_names
import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Catagory_Models/Catagory_Get_Model.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryComponents extends GetView<StatesScreenController> {
  const CatagoryComponents({
    Key? key,
    required this.image,
    required this.model,
    required this.title,
    required this.townCityId,
    required this.catagoryId,
    this.edit,
  }) : super(key: key);
  final String image;
  final StateCatagoryGetModel model;
  final String title;
  final String townCityId;
  final String catagoryId;
  final IconData? edit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
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
            Image.network(
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
            InkWell(
              onTap: () {
                Get.find<GlobalController>()
                    .CatagoryEditDailogBox(model,'Field Name', catagoryId, 'Update');
              },
              child: Icon(edit),
            )
          ]),
    );
  }
}
