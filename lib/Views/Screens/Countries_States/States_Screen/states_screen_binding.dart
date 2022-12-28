import 'package:brain_book_admin/Views/Screens/Countries_States/States_Screen/state_screen_controller.dart';
import 'package:get/instance_manager.dart';

class StatesScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatesScreenController(''));
  }
}
