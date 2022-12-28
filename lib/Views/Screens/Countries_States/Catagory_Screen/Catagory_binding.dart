// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_Screen_controller.dart';
import 'package:get/instance_manager.dart';

class CatogoryScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CatagoryScreenController(''));
  }
}
