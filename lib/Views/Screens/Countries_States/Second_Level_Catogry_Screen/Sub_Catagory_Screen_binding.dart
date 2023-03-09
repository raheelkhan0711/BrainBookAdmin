// ignore_for_file: file_names
import 'package:brain_book_admin/Views/Screens/Countries_States/Second_Level_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:get/instance_manager.dart';

class SeconLevelSubCatagoryScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SecondLevelSubCatagoryScreenController(""));
  }
}
