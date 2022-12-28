// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/LogOut/logout_Contoller.dart';
import 'package:get/instance_manager.dart';

class LogoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LogoutController());
  }
}
