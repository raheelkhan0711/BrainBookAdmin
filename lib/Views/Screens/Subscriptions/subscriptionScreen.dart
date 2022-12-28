// ignore_for_file: file_names, implementation_imports

import 'package:brain_book_admin/Views/Screens/Dashboard/DashBoard-Widgets/dashboard_appBar.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/Subscription_Widgets/Subscription_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SubscriptionScreen extends GetView<SubscriptionScreenController> {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [DashboardHomeBodyHeader()],
        ),
        body: GetBuilder<SubscriptionScreenController>(
          init: SubscriptionScreenController(),
          builder: (_) {
            return const SubscriptionScreenBody();
          },
        ));
  }
}
