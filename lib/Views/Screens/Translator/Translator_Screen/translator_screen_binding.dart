import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_controlller.dart';
import 'package:get/instance_manager.dart';

class TranslatorScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TranslatorScreenController());
  }
}
