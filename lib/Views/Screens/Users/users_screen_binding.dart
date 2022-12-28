import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:get/instance_manager.dart';

class UserScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => UserScreenController());
  }
}
