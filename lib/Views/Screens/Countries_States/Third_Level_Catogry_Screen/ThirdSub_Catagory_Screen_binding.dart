// ignore_for_file: file_names
import 'package:get/instance_manager.dart';

import 'ThirdSub_Catagory_Screen_Controller.dart';

class ThirdSeconLevelSubCatagoryScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ThirdLevelSubCatagoryScreenController(""));
  }
}
