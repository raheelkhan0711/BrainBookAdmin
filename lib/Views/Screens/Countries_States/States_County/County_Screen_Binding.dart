// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Countries_States/States_County/County_Screen_Controller.dart';
import 'package:get/instance_manager.dart';

class CountyScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountyScreenController(''));
  }
}
