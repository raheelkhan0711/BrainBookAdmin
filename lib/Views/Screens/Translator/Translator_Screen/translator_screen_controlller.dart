// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/API_DATA/API_MODELS/Translator_Models/Translator_Get_Model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/Translator_Providers/Translator_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/Translator_Providers/Translator_Post_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/Translator_Providers/Translator_Put_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorScreenController extends GetxController {
  //.....Instances.....//
  final TranslatorGetProvider _translatorGetProvider = TranslatorGetProvider();
  final TranslatorPostProvider _translatorPostProvider =
      TranslatorPostProvider();
  final TranslatorPutProvider _translatorPutProvider = TranslatorPutProvider();

  //.....Variables Initializations.....//
  TextEditingController translatorGetController = TextEditingController();
  TextEditingController translatorPostController = TextEditingController();
  TextEditingController translatorEditController = TextEditingController();

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesCtagoryScreen data in variables on Init function ......//
    translatorResultList = await _translatorGetProvider.fetchLanguage();
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> translatorResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createTranslator() async {
    var _translatorResult = await _translatorPostProvider
        .addLanguage(translatorPostController.text)
        .whenComplete(() async {
      translatorResultList
          .add(TranslatorGetModel(name: translatorPostController.text));
      translatorPostController.clear();
      update();
    });
    if (_translatorResult is String) {
      Get.snackbar(
        "Error",
        _translatorResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

//...Add  Edit States Method in Controlller for calling a method in a Variables from Provider class ..//
  void updateLanguage(String translatorId) async {
    var _editTranslatorResult = await _translatorPutProvider
        .editLanguage(translatorEditController.text, translatorId)
        .whenComplete(() async {
      translatorEditController.clear();
    });
    if (_editTranslatorResult is String) {
      Get.snackbar(
        "Error",
        _editTranslatorResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
