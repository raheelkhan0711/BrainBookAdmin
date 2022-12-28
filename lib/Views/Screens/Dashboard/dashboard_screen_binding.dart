import 'package:brain_book_admin/Views/Screens/Dashboard/dashboard_screen_controller.dart';
import 'package:get/instance_manager.dart';

class DashboardScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());
  }
}
