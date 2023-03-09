// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers


import 'dart:io';

import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Catagory_Models/Catagory_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Providers/Catagory_Get_provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Providers/Catagory_Post_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Providers/Catagory_Put_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryScreenController extends GetxController {
  //.....Instances.....//
  final CatagoryGetProvider _catagoryGetProvider = CatagoryGetProvider();
  final CatagoryPostProvider _catagoryPostProvider = CatagoryPostProvider();
  final CatagoryPutProvider _catagoryPutProvider = CatagoryPutProvider();

  //.....Variables Initializations.....//
  final formKey = GlobalKey<FormState>();
  final String townCityId;
  TextEditingController catagoryGetController = TextEditingController();
  TextEditingController catagoryPostController = TextEditingController();
  TextEditingController catagoryEditController = TextEditingController();
  CatagoryScreenController(this.townCityId);

//.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesCtagoryScreen data in variables on Init function ......//
    catagoryResultList = await _catagoryGetProvider.fetchCatagory(townCityId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> catagoryResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createCatagory(String cTypeString, imageUrl,String townCityId) async {
    var _catagoryResult = await _catagoryPostProvider
        .addCatagory(cTypeString,imageUrl,catagoryPostController.text, townCityId)
        .whenComplete(() async {
      catagoryResultList
          .add(StateCatagoryGetModel(title: catagoryPostController.text));
      catagoryPostController.clear();
      update();
    });
    if (_catagoryResult is String) {
      Get.snackbar(
        "Error",
        _catagoryResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

  //...Add  Edit States Method in Controlller for calling a method in a Variables from Provider class ..//
  void updateCatagory(String type,String imageUrl,String catagoryId) async {
    var _editCatagoryResult = await _catagoryPutProvider
        .editCatagory(type,imageUrl,catagoryEditController.text, catagoryId)
        .whenComplete(() async {
      catagoryEditController.clear();
    });
    if (_editCatagoryResult is String) {
      Get.snackbar(
        "Error",
        _editCatagoryResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}
