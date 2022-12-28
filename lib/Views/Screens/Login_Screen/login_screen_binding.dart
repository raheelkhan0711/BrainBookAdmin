import 'package:brain_book_admin/Views/Screens/Login_Screen/login_screen_controller.dart';
import 'package:get/instance_manager.dart';

class LoginScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginScreenController());
    // Get.put(GlobalController());
  }
}
