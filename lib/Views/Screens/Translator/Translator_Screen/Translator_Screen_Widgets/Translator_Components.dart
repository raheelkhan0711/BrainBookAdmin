// ignore_for_file: file_names
import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_controlller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorComponents extends GetView<TranslatorScreenController> {
  const TranslatorComponents({
    Key? key,
    required this.image,
    required this.title,
    required this.translatorId,
    this.edit,
  }) : super(key: key);
  final String image;
  final String title;
  final String translatorId;
  final IconData? edit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
          Text(title),
          const SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: () {
                Get.find<GlobalController>().TranslatorEditDailogBox(
                  'Edit Language',
                  translatorId,
                  'Update',
                );
              },
              child: Icon(edit))
        ],
      ),
    );
  }
}
