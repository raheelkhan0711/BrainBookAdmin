// ignore_for_file: file_names
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen_Controller.dart';
import 'package:get/instance_manager.dart';

class TrespassersBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TrespassersController());
  }
}
