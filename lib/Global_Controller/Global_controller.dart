// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, file_names, prefer_final_fields, unused_field
import 'package:brain_book_admin/API_DATA/API_MODELS/Login_Model/Login_Model.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_Screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TownCity/TownCity_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_controlller.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  //.........Global key and Controller Initialization......//
  final formKey = GlobalKey<FormState>();
  CountryScreenController _countryScreenController = CountryScreenController();
  StatesScreenController _statesScreenController = StatesScreenController('');
  CountyScreenController _countyScreenController = CountyScreenController('');
  TownCityScreenController _townCityScreenController =
      TownCityScreenController('');
  CatagoryScreenController _catagoryScreenController =
      CatagoryScreenController('');
  SubCatagoryScreenController _subCatagoryScreenController =
      SubCatagoryScreenController('');
  SubscriptionScreenController _subscriptionScreenController =
      SubscriptionScreenController();
  UserScreenController _userScreenController = UserScreenController();
  TranslatorScreenController _translatorScreenController =
      TranslatorScreenController();
  TranslatorPhraseScreenController _translatorPhraseScreenController =
      TranslatorPhraseScreenController('');

//......... Country DailogBox Method......//
  Future<dynamic> CountryDailogBox(
    String title,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 400,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller:
                          _countryScreenController.CountriesPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _countryScreenController.createCountry();
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... State DailogBox Method......//
  Future<dynamic> StatesDailogBox(
    String title,
    String countryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 400,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: _statesScreenController.statesPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _statesScreenController.createState(countryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... Country DailogBox Method......//
  Future<dynamic> CountyDailogBox(
    String title,
    String stateId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 400,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: _countyScreenController.countyPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _countyScreenController.createCounty(stateId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... Town and City DailogBox Method......//
  Future<dynamic> TownCityDailogBox(
    String title,
    String countyId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 400,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller:
                          _townCityScreenController.townCityPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _townCityScreenController.createTownCity(countyId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... State Catogory DailogBox Method......//
  Future<dynamic> CatagoryDailogBox(
    String title,
    String townCityId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:
                          _catagoryScreenController.catagoryPostController,
                      keyboardType: TextInputType.text,
                      // obscureText: false,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Add Font image'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff073763).withOpacity(0.9)),
                              onPressed: () {},
                              child: const Text('Add image')),
                        ]),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _catagoryScreenController.createCatagory(townCityId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... State Catogory EditDailogBox Method......//
  Future<dynamic> CatagoryEditDailogBox(
    String title,
    String catagoryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:
                          _catagoryScreenController.catagoryEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text('Add Font image'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff073763).withOpacity(0.9)),
                              onPressed: () {},
                              child: const Text('Add image')),
                        ]),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _catagoryScreenController.updateCatagory(catagoryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... State Sub Catagory AddText DailogBox Method......//
  Future<dynamic> StatesSubCatagoryAddTextDailogBox(
    String title,
    String description,
    String categoryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 450,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subCatagoryScreenController
                          .subCatagoryTitlePostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'title',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: _subCatagoryScreenController
                                  .subCatagoryDescriptionPostController,
                              keyboardType: TextInputType.text,
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: 'description',
                                hintMaxLines: 4,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 4.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subCatagoryScreenController
                              .createSubCatagoryText(categoryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... State Sub Catagory EditText DailogBox Method......//
  Future<dynamic> SubCatagoryEditTextDailogBox(
    String title,
    String description,
    String subCatagoryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 450,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subCatagoryScreenController
                          .subCatagoryTitleEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'title',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 350,
                            child: TextFormField(
                              controller: _subCatagoryScreenController
                                  .subCatagoryDescriptionEditController,
                              keyboardType: TextInputType.text,
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: 'description',
                                hintMaxLines: 4,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 4.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subCatagoryScreenController
                              .updateSubCatagoryText(subCatagoryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... State sub catagory subTab DailogBox Method......//
  Future<dynamic> SubCatagorySubTabDailogBox(
    String title,
    String categoryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 450,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _subCatagoryScreenController
                          .subCatagorySubTabPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'title',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subCatagoryScreenController
                              .createSubCatagorySubTab(categoryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... State sub catagory subTab DailogBox Method......//
  Future<dynamic> SubCatagoryEditSubTabDailogBox(
    String title,
    String subCatagoryId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 200,
            width: 450,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  Text(title),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _subCatagoryScreenController
                          .subCatagorySubTabEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'title',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subCatagoryScreenController
                              .updateSubCatagorySubTab(subCatagoryId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... State Delete DailogBox Method......//
  Future<dynamic> SubCatagorySubTabDeleteDailogBox(
      String title1, title2, String subCatagoryId) {
    // final  String title;
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title1,
        content: Container(
            height: 210,
            width: 430,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(title2),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidget(
                            title: 'Cancel',
                            onTap: () {
                              Navigator.pop(Get.context!);
                            }),
                        ButtonWidget(
                            title: 'Delete',
                            onTap: () {
                              _subCatagoryScreenController
                                  .deleteSubCatagorySubTab(subCatagoryId);
                              Navigator.pop(Get.context!);
                            }),
                      ],
                    ),
                  )
                ])));
  }

//......... Subscription Add DailogBox Method......//
  Future<dynamic> SubscriptionDailogBox(
    String title,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 320,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionTitlePostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Package Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionPricePostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        //labelText: 'State Name',
                        hintText: 'Price',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionDescriptionPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        //labelText: 'State Name',
                        hintText: 'Description',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subscriptionScreenController
                              .createSubscriptionPackage();
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... Subscription Add DailogBox Method......//
  Future<dynamic> SubscriptionEditDailogBox(
    String title,
    String id,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 320,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionTitleEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Package Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionPriceEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Price',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _subscriptionScreenController
                          .subscriptionDescriptionEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _subscriptionScreenController
                              .updateSubScriptionPackage(id);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... State Delete DailogBox Method......//
  Future<dynamic> SubscriptionDeleteDailogBox(
      String title1, title2, String id) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title1,
        content: Container(
            height: 220,
            width: 430,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(title2),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidget(
                            title: 'Cancel',
                            onTap: () {
                              Navigator.pop(Get.context!);
                            }),
                        ButtonWidget(
                            title: 'Delete',
                            onTap: () {
                              _subscriptionScreenController
                                  .deleteSubscriptionPackage(id);
                              Navigator.pop(Get.context!);
                            }),
                      ],
                    ),
                  )
                ])));
  }

//......... admin panel Users DailogBox Method......//
  Future<dynamic> AdminUsersDetailsDailogBox(String title, buttontext) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
          height: 350,
          width: 500,
          child: GetBuilder<UserScreenController>(
            init: UserScreenController(),
            builder: (_) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount:
                      _userScreenController.adminUserDetailsResultList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Admin panel Users Details',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    _userScreenController
                                        .adminUserDetailsResultList[index].name
                                        .toString(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Email',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    _userScreenController
                                        .adminUserDetailsResultList[index].email
                                        .toString(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Phone Number',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    _userScreenController
                                        .adminUserDetailsResultList[index].phone
                                        .toString(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'State',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    _userScreenController
                                        .adminUserDetailsResultList[index]
                                        .userState
                                        .toString(),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: ButtonWidget(
                                    title: buttontext,
                                    onTap: () {
                                      Navigator.pop(Get.context!);
                                    }),
                              )
                            ]),
                      ),
                    );
                  });
            },
          ),
        ));
  }

  //......... admin panel Users DailogBox Method......//
  Future<dynamic> AppUsersDeatilsDailogBox(String title, buttontext) {
    // final  String title;
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
          height: 320,
          width: 500,
          child: ListView.builder(
              itemCount: 1,
              // _userScreenController.adminUserDetailsResultList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'App Users Details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('jhgh'
                                  // _userScreenController
                                  //     .adminUserDetailsResultList[index].name
                                  //     .toString(),
                                  )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('bhjvhg'
                                  // _userScreenController
                                  //     .adminUserDetailsResultList[index].email
                                  //     .toString(),
                                  )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('jhgb'
                                  // _userScreenController
                                  //     .adminUserDetailsResultList[index].phone
                                  //     .toString(),
                                  )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'State',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('kjbjh'
                                  // _userScreenController
                                  //     .adminUserDetailsResultList[index].userState
                                  //     .toString(),
                                  )
                            ],
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: ButtonWidget(
                                title: buttontext,
                                onTap: () {
                                  Navigator.pop(Get.context!);
                                }),
                          )
                        ]),
                  ),
                );
              }),
        ));
  }

//......... Translator DailogBox Method......//
  Future<dynamic> TranslatorDailogBox(
    String title,
    buttonText,
    //  String image
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:
                          _translatorScreenController.translatorPostController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text('Add Font image'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff073763).withOpacity(0.9)),
                              onPressed: () {},
                              child: const Text('Add image')),
                        ]),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _translatorScreenController.createTranslator();
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... Translator DailogBox Method......//
  Future<dynamic> TranslatorEditDailogBox(
    String title,
    String translatorId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 300,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller:
                          _translatorScreenController.translatorEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text('Add Font image'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff073763).withOpacity(0.9)),
                              onPressed: () {},
                              child: const Text('Add image')),
                        ]),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _translatorScreenController
                              .updateLanguage(translatorId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

//......... Translator Phrase DailogBox Method......//
  Future<dynamic> PhraseDailogBox(String title, String languageId, buttonText) {
    return Get.defaultDialog(
      titlePadding: EdgeInsets.only(top: 30),
      radius: 10,
      title: title,
      content: Container(
          height: 400,
          width: 500,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: _translatorPhraseScreenController
                        .phraseTitlePostController,
                    //  controller: settingsScreenController.categoryNameController,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'English',
                      hintMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 4.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: _translatorPhraseScreenController
                        .phraseTargetLanguagePostController,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'French',
                      hintMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 4.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(color: Colors.grey),
                      top: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text('Add Audio File'),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0xff073763).withOpacity(0.9)),
                            onPressed: () {},
                            child: const Text('Add Audio')),
                      ]),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: ButtonWidget(
                      title: buttonText,
                      onTap: () {
                        _translatorPhraseScreenController
                            .createPhrase(languageId);
                        Navigator.pop(Get.context!);
                      }),
                )
              ])),
    );
  }

//......... Translator Phrase DailogBox Method......//
  Future<dynamic> EditPhraseDailogBox(
    String title,
    String phraseId,
    buttonText,
  ) {
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title,
        content: Container(
            height: 400,
            width: 500,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _translatorPhraseScreenController
                          .phraseTitleEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'English',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: _translatorPhraseScreenController
                          .phraseTargetLanguageEditController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'French',
                        hintMaxLines: 1,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 4.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text('Add Audio File'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff073763).withOpacity(0.9)),
                              onPressed: () {},
                              child: const Text('Add Audio')),
                        ]),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                        title: buttonText,
                        onTap: () {
                          _translatorPhraseScreenController
                              .updatePhrase(phraseId);
                          Navigator.pop(Get.context!);
                        }),
                  )
                ])));
  }

  //......... State Delete DailogBox Method......//
  Future<dynamic> LogoutDeleteDailogBox(
    String title1,
    title2,
  ) {
    // final  String title;
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: title1,
        content: Container(
            height: 210,
            width: 430,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(title2),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidget(
                            title: 'Cancel',
                            onTap: () {
                              Navigator.pop(Get.context!);
                            }),
                        ButtonWidget(
                            title: 'Delete',
                            onTap: () {
                              // _statesSubCatagoryScreenController
                              //     .deleteSubCatagorySubTab(id);
                              Navigator.pop(Get.context!);
                            }),
                      ],
                    ),
                  )
                ])));
  }

//......... Realted to Login Screen......//
  final Rx<LoginModel> _user = LoginModel(msg: '').obs;
  LoginModel get user => _user.value;
  set user(LoginModel user) => _user.value = user;
}
