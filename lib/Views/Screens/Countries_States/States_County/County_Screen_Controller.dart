// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/County_Models/County_Get_Model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States-County_Providers/County_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States-County_Providers/County_Post_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountyScreenController extends GetxController {
  //.....Instances.....//
  final CountyGetProvider _countyGetProvider = CountyGetProvider();
  final CountyPostProvider _countyPostProvider = CountyPostProvider();

  //.....Variables Initializations.....//
  final String stateId;
  TextEditingController countyPostController = TextEditingController();
  TextEditingController countyGetController = TextEditingController();
  CountyScreenController(this.stateId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called CountyScreen data in variables on Init function ......//
    countyResultList = await _countyGetProvider.fetchCounty(stateId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> countyResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createCounty(String stateId) async {
    var _countyResult = await _countyPostProvider
        .addNewCounty(countyPostController.text, stateId)
        .whenComplete(() async {
      countyResultList.add(
          CountyGetModel(countyName: countyPostController.text.toString()));
      countyPostController.clear();
      update();
    });
    if (_countyResult is String) {
      Get.snackbar(
        "Error",
        _countyResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }
}
