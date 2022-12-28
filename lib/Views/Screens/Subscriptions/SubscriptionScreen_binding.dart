// ignore_for_file: file_names

import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen_controller.dart';
import 'package:get/instance_manager.dart';

class SubscriptionScreenBinding implements Bindings {
  @override
  void dependencies() {
    //  Get.lazyPut(() => SubscriptionScreenController());
    Get.put(SubscriptionScreenController());
  }
}
