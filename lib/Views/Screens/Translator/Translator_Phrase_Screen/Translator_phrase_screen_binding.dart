// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Translator/Translator_Phrase_Screen/Translator_phrase_screen_controller.dart';
import 'package:get/instance_manager.dart';

class TranslatorPhraseScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TranslatorPhraseScreenController(''));
  }
}
