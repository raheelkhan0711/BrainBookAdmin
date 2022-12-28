// ignore_for_file: file_names, avoid_print, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:brain_book_admin/API_DATA/API_MODELS/Subscription%20Models/subscription_Post_Model.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Subscription_Providers/subscription_Delete_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Subscription_Providers/subscription_Get_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Subscription_Providers/subscription_Post_Provider.dart';
import 'package:brain_book_admin/API_DATA/API_PROVIDERS/Subscription_Providers/subscription_Put_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionScreenController extends GetxController {
  //.....Instances.....//
  final SubscriptionGetProvider _subscriptionGetProvider =
      SubscriptionGetProvider();
  final SubscriptionPostProvider _subscriptionPostProvider =
      SubscriptionPostProvider();
  final SubscriptionPutProvider _subscriptionPutProvider =
      SubscriptionPutProvider();
  final SubscriptionDeleteProvider _subscriptionDeleteProvider =
      SubscriptionDeleteProvider();

  //.....Variables Initializations Text Editing Controller.....//
  TextEditingController subscriptionGetController = TextEditingController();
  //.....Subscription Post TextEditing Controller.....//
  TextEditingController subscriptionTitlePostController =
      TextEditingController();
  TextEditingController subscriptionDescriptionPostController =
      TextEditingController();
  TextEditingController subscriptionPricePostController =
      TextEditingController();
  //.....Subscription Edit TextEditing Controller.....//
  TextEditingController subscriptionTitleEditController =
      TextEditingController();
  TextEditingController subscriptionDescriptionEditController =
      TextEditingController();
  TextEditingController subscriptionPriceEditController =
      TextEditingController();
  //.....Subscription Delete TextEditing Controller.....//
  TextEditingController subscriptionDeleteController = TextEditingController();

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    subscriptionResultList =
        await _subscriptionGetProvider.fetchSubscriptionData();
    update();
    super.onInit();
  }

  //.....Dynamic Lists for getting APIS DATA.....//
  List<dynamic> subscriptionResultList = [].obs;

  //...Add Subscription Method in Controlller for calling a method in a Variables from Provider class ..//

  void createSubscriptionPackage() async {
    var _subscriptionPackageResult = await _subscriptionPostProvider
        .addSubscriptionData(
            subscriptionTitlePostController.text,
            subscriptionDescriptionPostController.text,
            subscriptionPricePostController.text)
        .whenComplete(() async {
      subscriptionResultList.add(SubscriptionPostModel(
          title: subscriptionTitlePostController.text,
          description: subscriptionDescriptionPostController.text,
          price: int.parse(subscriptionPricePostController.text)));
      subscriptionTitlePostController.clear();
      subscriptionDescriptionPostController.clear();
      subscriptionPricePostController.clear();
      update();
    });
    if (_subscriptionPackageResult is String) {
      Get.snackbar(
        "Error",
        _subscriptionPackageResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

//...Add Edit Subscription Method in Controlller for calling a method in a Variables from Provider class ..//
  void updateSubScriptionPackage(String id) async {
    var _subscriptionEditResult = await _subscriptionPutProvider
        .editSubscriptionPackage(
            subscriptionTitleEditController.text,
            subscriptionDescriptionEditController.text,
            subscriptionPriceEditController.text,
            id)
        .whenComplete(() async {
      subscriptionTitleEditController.clear();
      subscriptionDescriptionEditController.clear();
      subscriptionPriceEditController.clear();
    });
    if (_subscriptionEditResult is String) {
      Get.snackbar(
        "Error",
        _subscriptionEditResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void deleteSubscriptionPackage(String id) async {
    var _deleteSubscriptionResult = await _subscriptionDeleteProvider
        .deleteSubscriptionPackage(id)
        .whenComplete(() async {
      subscriptionDeleteController.clear();
    });
  }
}
