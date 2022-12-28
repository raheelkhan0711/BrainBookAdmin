// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, avoid_print, unused_field, unused_local_variable
import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/Sub_Catagory_Models/States_Sub_Catagory_SubTab_models/sub_catagory_SubTab_Get_Model.dart';
import 'package:brain_book_admin/API_DATA/API_MODELS/STATES/Sub_Catagory_Models/Sub_catagory_Text_Get_model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/States_Sub_Catagory_SubTab_Providers/SubCatagory_SubTab_Get_Providers.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/States_Sub_Catagory_SubTab_Providers/Sub_Catagory_SubTab_Post_Providers.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/States_Sub_Catagory_SubTab_Providers/Sub_Catagory_SubTab_put_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/States_Sub_Catagory_SubTab_Providers/sub_catagory-SubTab_Delete_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/Sub_catagory_Text_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/Sub_catagory_Text_Post_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/States_Provider/States_Sub_Catagory_Providers/Sub_catagory_Text_Put_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCatagoryScreenController extends GetxController {
  //.....Instances.....//
  final SubCatagoryTextGetProvider _subCatagoryTextGetProvider =
      SubCatagoryTextGetProvider();
  final SubCatagoryTextPostProvider _subCatagoryTextPostProvider =
      SubCatagoryTextPostProvider();
  final SubCatagoryPutProvider _subCatagoryPutProvider =
      SubCatagoryPutProvider();
  final SubCatagorySubTabGetProvider _subCatagorySubTabGetProvider =
      SubCatagorySubTabGetProvider();
  final SubCatagorySubTabPostProvider _subCatagorySubTabPostProvider =
      SubCatagorySubTabPostProvider();
  final SubCatagorySubTabPutProvider _subCatagorySubTabPutProvider =
      SubCatagorySubTabPutProvider();
  final SubCatagorySubTabDeleteProvider _subCatagorySubTabDeleteProvider =
      SubCatagorySubTabDeleteProvider();

  //.....Variables Initializations.....//
  final formKey = GlobalKey<FormState>();
  final String categoryId;
  //..... Text Editing Controllers for Sub Catagory.....//
  TextEditingController subCatagoryGetController = TextEditingController();
  TextEditingController subCatagoryTitlePostController =
      TextEditingController();
  TextEditingController subCatagoryDescriptionPostController =
      TextEditingController();
  TextEditingController subCatagoryTitleEditController =
      TextEditingController();
  TextEditingController subCatagoryDescriptionEditController =
      TextEditingController();
  //..... Text Editing Controllers for Sub Catagory SubTab.....//
  TextEditingController subCatagorySubTabGetController =
      TextEditingController();
  TextEditingController subCatagorySubTabPostController =
      TextEditingController();
  TextEditingController subCatagorySubTabEditController =
      TextEditingController();
  TextEditingController subCatagorySubTabDeleteController =
      TextEditingController();

  SubCatagoryScreenController(this.categoryId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesCtagoryScreen data in variables on Init function ......//
    subCatagoryTextResultList =
        await _subCatagoryTextGetProvider.fetchSubCatagoryText(categoryId);
    subCatagorySubTabResultList =
        await _subCatagorySubTabGetProvider.fetchSubCatagorySubTab(categoryId);
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
    var _statesSubCatagoryResult = await _subCatagoryTextPostProvider
        .addSubCatagoryText(categoryId, subCatagoryTitlePostController.text,
            subCatagoryDescriptionPostController.text)
        .whenComplete(() async {
      subCatagoryTextResultList.add(SubCatagoryTextGetModel(
        title: subCatagoryTitlePostController.text.toString(),
        description: subCatagoryDescriptionPostController.text.toString(),
      ));
      subCatagoryTitlePostController.clear();
      subCatagoryDescriptionPostController.clear();
      update();
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
    var _subCatagorySubTabResult = await _subCatagorySubTabPostProvider
        .addSubCatagorySubTab(
      categoryId,
      subCatagorySubTabPostController.text,
    )
        .whenComplete(() async {
      subCatagorySubTabResultList.add(SubCatagorySubTabGetModel(
        title: subCatagorySubTabPostController.text.toString(),
      ));
      subCatagorySubTabPostController.clear();
      update();
    });
    if (_subCatagorySubTabResult is String) {
      Get.snackbar(
        'error',
        _subCatagorySubTabResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

  //...Add Edit States Method in Controlller for calling a method in a Variables from Provider class ..//
  void updateSubCatagoryText(String subCatagoryId) async {
    var _editSubCatagoryResult = await _subCatagoryPutProvider
        .editSubCatagoryText(subCatagoryTitleEditController.text,
            subCatagoryDescriptionEditController.text, subCatagoryId)
        .whenComplete(() async {
      subCatagoryTitleEditController.clear();
      subCatagoryDescriptionEditController.clear();
    });
    if (_editSubCatagoryResult is String) {
      Get.snackbar(
        "Error",
        _editSubCatagoryResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void updateSubCatagorySubTab(String subCatagoryId) async {
    var _editSubCatagorySubTabResult = await _subCatagorySubTabPutProvider
        .editSubCatagorySubTab(
            subCatagorySubTabEditController.text, subCatagoryId)
        .whenComplete(() async {
      subCatagorySubTabEditController.clear();
    });
    if (_editSubCatagorySubTabResult is String) {
      Get.snackbar(
        "Error",
        _editSubCatagorySubTabResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void deleteSubCatagorySubTab(String subCatagoryId) async {
    var _deleteSubCatagorySubTabResult = await _subCatagorySubTabDeleteProvider
        .deleteSubCatagorySubTab(subCatagoryId)
        .whenComplete(() async {
      subCatagorySubTabDeleteController.clear();
    });
  }
}
