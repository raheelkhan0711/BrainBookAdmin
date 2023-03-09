// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, avoid_print, unused_field, unused_local_variable
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Sub_Catagory_Models/States_Sub_Catagory_SubTab_models/sub_catagory_SubTab_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Sub_Catagory_Models/Sub_catagory_Text_Get_model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Delete_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Get_Providers.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_Post_Providers.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/SubTab_Providers/SubTab_put_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Get_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Post_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Catagory_Details_Providers/Text_Put_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/SecondLevel_Category_Providers/SecondLevelCategoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondLevelSubCatagoryScreenController extends GetxController {
  //.....Instances.....//
  final SecondLevelCatagoryTextGetProvider _secondLevelCatagoryTextGetProvider =
  SecondLevelCatagoryTextGetProvider();
  final SecondLevelCatagoryTextPostProvider _secondLevelCatagoryTextPostProvider =
  SecondLevelCatagoryTextPostProvider();
  final SecondLevelCatagoryTextPutProvider _secondLevelCatagoryPutProvider =
  SecondLevelCatagoryTextPutProvider();
  final SecondLevelCatagorySubTabGetProvider _secondLevelCatagorySubTabGetProvider =
  SecondLevelCatagorySubTabGetProvider();
  final SecondLevelCatagorySubTabPostProvider _secondLevelCatagorySubTabPostProvider =
  SecondLevelCatagorySubTabPostProvider();
  final SecondLevelCatagorySubTabPutProvider _secondLevelCatagorySubTabPutProvider =
  SecondLevelCatagorySubTabPutProvider();
  final SecondLevelCatagorySubTabDeleteProvider _secondLevelCatagorySubTabDeleteProvider =
  SecondLevelCatagorySubTabDeleteProvider();

  //.....Variables Initializations.....//
  final formKey = GlobalKey<FormState>();
  final String categoryId;
  //..... Text Editing Controllers for Sub Catagory.....//
  TextEditingController secondLevelCatagoryGetController = TextEditingController();
  TextEditingController secondLevelCatagoryTitlePostController =
      TextEditingController();
  TextEditingController secondLevelCatagoryDescriptionPostController =
      TextEditingController();
  TextEditingController secondLevelCatagoryTitleEditController =
      TextEditingController();
  TextEditingController secondLevelCatagoryDescriptionEditController =
      TextEditingController();
  //..... Text Editing Controllers for Sub Catagory SubTab.....//
  TextEditingController secondLevelCatagorySubTabGetController =
      TextEditingController();
  TextEditingController secondLevelCatagorySubTabPostController =
      TextEditingController();
  TextEditingController secondLevelCatagorySubTabEditController =
      TextEditingController();
  TextEditingController secondLevelCatagorySubTabDeleteController =
      TextEditingController();

  SecondLevelSubCatagoryScreenController(this.categoryId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesCtagoryScreen data in variables on Init function ......//
    subCatagoryTextResultList =
        await _secondLevelCatagoryTextGetProvider.fetchSubCatagoryText(categoryId);
    subCatagorySubTabResultList =
        await _secondLevelCatagorySubTabGetProvider.fetchSubCatagorySubTab(categoryId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> subCatagoryTextResultList = [].obs;
  List<dynamic> subCatagorySubTabResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createSubCatagoryText(String categoryId) async {
    print(categoryId);
    var _statesSubCatagoryResult = await _secondLevelCatagoryTextPostProvider
        .addSubCatagoryText(categoryId, secondLevelCatagoryTitlePostController.text,
            secondLevelCatagoryDescriptionPostController.text)
        .whenComplete(() async {
      subCatagoryTextResultList.add(SubCatagoryTextGetModel(
        title: secondLevelCatagoryTitlePostController.text.toString(),
        description: secondLevelCatagoryDescriptionPostController.text.toString(),
      ));
      print('ttytytytytytyytyytytytytytyyt');
      update();
      secondLevelCatagoryTitlePostController.clear();
      secondLevelCatagoryDescriptionPostController.clear();
    });
    if (_statesSubCatagoryResult is String) {
      Get.snackbar(
        'error',
        _statesSubCatagoryResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

  void createSubCatagorySubTab(String categoryId) async {
    // print(catagoryId);
    var _subCatagorySubTabResult = await _secondLevelCatagorySubTabPostProvider
        .addSubCatagorySubTab(
      categoryId,
      secondLevelCatagorySubTabPostController.text,
    )
        .whenComplete(() async {
      subCatagorySubTabResultList.add(SubCatagorySubTabGetModel(
        title: secondLevelCatagorySubTabPostController.text.toString(),
      ));
      secondLevelCatagorySubTabPostController.clear();
      update();
    });
    if (_subCatagorySubTabResult is String) {
      Get.snackbar(
        'error',
        _subCatagorySubTabResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
    update();
  }

  //...Add Edit States Method in Controlller for calling a method in a Variables from Provider class ..//
  void updateSubCatagoryText(String subCatagoryId) async {
    var _editSubCatagoryResult = await _secondLevelCatagoryPutProvider
        .editSubCatagoryText(secondLevelCatagoryTitleEditController.text,
            secondLevelCatagoryDescriptionEditController.text, subCatagoryId)
        .whenComplete(() async {
      secondLevelCatagoryTitleEditController.clear();
      secondLevelCatagoryDescriptionEditController.clear();
    });
    if (_editSubCatagoryResult is String) {
      Get.snackbar(
        "Error",
        _editSubCatagoryResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    update();
  }

  void updateSubCatagorySubTab(String subCatagoryId) async {
    var _editSubCatagorySubTabResult = await _secondLevelCatagorySubTabPutProvider
        .editSubCatagorySubTab(
            secondLevelCatagorySubTabEditController.text, subCatagoryId)
        .whenComplete(() async {
      secondLevelCatagorySubTabEditController.clear();
    });
    if (_editSubCatagorySubTabResult is String) {
      Get.snackbar(
        "Error",
        _editSubCatagorySubTabResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    update();
  }

  void deleteSubCatagorySubTab(String subCatagoryId) async {
    var _deleteSubCatagorySubTabResult = await _secondLevelCatagorySubTabDeleteProvider
        .deleteSubCatagorySubTab(subCatagoryId)
        .whenComplete(() async {
      secondLevelCatagorySubTabDeleteController.clear();
    });
    update();
  }
}
