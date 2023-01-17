// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:brain_book_admin/Core/Services/API_MODELS/Translator_Models/Phrase%20Models/phrase_Get_Model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Translator_Providers/Phrase_Providers/Phrase_Get_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Translator_Providers/Phrase_Providers/Phrase_Post_Provider.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/States_Provider/Translator_Providers/Phrase_Providers/Phrase_Put_Provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorPhraseScreenController extends GetxController {
  //.....Instances.....//
  final PhraseGetProvider _phraseGetProvider = PhraseGetProvider();
  final PhrasePostProvider _phrasePostProvider = PhrasePostProvider();
  final PhrasePutProvider _phrasePutProvider = PhrasePutProvider();

  //.....Variables Initializations.....//
  final String languageId;
  TextEditingController phraseGetController = TextEditingController();
  TextEditingController phraseTitlePostController = TextEditingController();
  TextEditingController phraseTargetLanguagePostController =
      TextEditingController();
  TextEditingController phraseTitleEditController = TextEditingController();
  TextEditingController phraseTargetLanguageEditController =
      TextEditingController();
  TranslatorPhraseScreenController(this.languageId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called StatesCtagoryScreen data in variables on Init function ......//
    phraseResultList = await _phraseGetProvider.fetchPhrase(languageId);
    //.....Get Builder method.....//
    update();
    super.onInit();
  }

//.....Dynamic List for getting APIS DATA.....//
  List<dynamic> phraseResultList = [].obs;

  //...Add Phrase Method in Controlller for calling a method in a Variables from Provider class ..//
  void createPhrase(String languageId) async {
    var _phraseResult = await _phrasePostProvider
        .addNewPhrase(phraseTitlePostController.text,
            phraseTargetLanguagePostController.text, languageId)
        .whenComplete(() async {
      phraseResultList.add(PhraseGetModel(
          english: phraseTitlePostController.text,
          targetLanguage: phraseTargetLanguagePostController.text));
      phraseTitlePostController.clear();
      phraseTargetLanguagePostController.clear();
      update();
    });
    if (_phraseResult is String) {
      Get.snackbar(
        "Error",
        _phraseResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {}
  }

//...Add  Edit States Method in Controlller for calling a method in a Variables from Provider class ..//
  void updatePhrase(String phraseId) async {
    var _editPhraseResult = await _phrasePutProvider
        .editPhrase(phraseTitleEditController.text,
            phraseTargetLanguageEditController.text, phraseId)
        .whenComplete(() async {
      phraseTitleEditController.clear();
      phraseTargetLanguageEditController.clear();
    });
    if (_editPhraseResult is String) {
      Get.snackbar(
        "Error",
        _editPhraseResult,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
