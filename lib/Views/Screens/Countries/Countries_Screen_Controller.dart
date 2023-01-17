// ignore_for_file: file_names, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/Core/Services/API_MODELS/Countries%20Models/countries_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Countries_Providers/countries_Get_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Countries_Providers/countries_Post_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryScreenController extends GetxController {
  //.....Instances.....//
  final CountriesGetProvider _countriesGetProvider = CountriesGetProvider();
  final CountriesPostProvider _countriesPostProvider = CountriesPostProvider();

  //.....Variables Initializations.....//
  TextEditingController CountriesGetController = TextEditingController();
  TextEditingController CountriesPostController = TextEditingController();

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called CountriesScreen data in variables on Init function ......//
    countriesResultList = await _countriesGetProvider.fetchCountries();
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

//.....Dynamic List for getting APIS DATA.....//
  List<dynamic> countriesResultList = [].obs;

  //...Add Countries Method in Controlller for calling a method in a Variables from Provider class ..//
  void createCountry() async {
    var _countriesResult = await _countriesPostProvider
        .addNewCountry(CountriesPostController.text)
        .whenComplete(() async {
      countriesResultList.add(CountriesGetModel(
          countryName: CountriesPostController.text.toString()));
      CountriesPostController.clear();
      update();
    });
    if (_countriesResult is String) {
      Get.snackbar(
        "Error",
        _countriesResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }
}
