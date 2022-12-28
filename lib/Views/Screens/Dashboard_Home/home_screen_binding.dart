import 'package:brain_book_admin/Views/Screens/Dashboard_Home/home_screen_controller.dart';
import 'package:get/instance_manager.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
