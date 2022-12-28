// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/TownCity_Models/townCity_Post_Model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/TownCity_Providers/townCity_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/TownCity_Providers/townCity_Post_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TownCityScreenController extends GetxController {
  //.....Instances.....//
  final TownCityGetProvider _townCityGetProvider = TownCityGetProvider();
  final TownCityPostProvider _townCityPostProvider = TownCityPostProvider();

  //.....Variables Initializations.....//
  final String countyId;
  TextEditingController townCityPostController = TextEditingController();
  TextEditingController townCityGetController = TextEditingController();
  TownCityScreenController(this.countyId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called CountyScreen data in variables on Init function ......//
    townCityResultList = await _townCityGetProvider.fetchTownCity(countyId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> townCityResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createTownCity(String countyId) async {
    var _townCityResult = await _townCityPostProvider
        .addNewTownCity(townCityPostController.text, countyId)
        .whenComplete(() async {
      townCityResultList.add(TownCityPostModel(
          townCityName: townCityPostController.text.toString()));
      townCityPostController.clear();
      update();
    });
    if (_townCityResult is String) {
      Get.snackbar(
        "Error",
        _townCityResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }
}
