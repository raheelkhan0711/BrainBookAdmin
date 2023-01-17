// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, non_constant_identifier_names
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/States_Models/states_Screen_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/States_Providers/state_Screen_Get_provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/States_Providers/states_Screen_Post_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StatesScreenController extends GetxController {
  //.....Instances.....//
  final StatesScreenGetProvider _statesScreenGetProvider =
      StatesScreenGetProvider();
  final StatesPostProvider _statesScreenPostProvider = StatesPostProvider();

  //.....Variables Initializations.....//
  final formKey = GlobalKey<FormState>();
  final String countryId;
  TextEditingController statesPostController = TextEditingController();
  TextEditingController statesGetController = TextEditingController();
  StatesScreenController(this.countryId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesScreen data in variables on Init function ......//
    statesResultList = await _statesScreenGetProvider.fetchState(countryId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

  //.....Dynamic List for getting APIS DATA.....//
  List<dynamic> statesResultList = [].obs;

  //...Add States Method in Controlller for calling a method in a Variables from Provider class ..//
  void createState(String countryId) async {
    var _statesResult = await _statesScreenPostProvider
        .addNewState(statesPostController.text, countryId)
        .whenComplete(() async {
      statesResultList
          .add(StatesGetModel(state: statesPostController.text.toString()));
      statesPostController.clear();
      update();
    });
    if (_statesResult is String) {
      Get.snackbar(
        "Error",
        _statesResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }
}
