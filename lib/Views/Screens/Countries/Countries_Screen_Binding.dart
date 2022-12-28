// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:get/instance_manager.dart';

class CountriesScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountryScreenController());
  }
}
