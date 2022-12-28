// ignore_for_file: implementation_imports
import 'package:brain_book_admin/Views/Screens/Users/UsersScreen_Widgets/Users_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Dashboard/DashBoard-Widgets/dashboard_appBar.dart';

class UsersScreen extends GetView<UserScreenController> {
  const UsersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [DashboardHomeBodyHeader()],
      ),
      body: GetBuilder<UserScreenController>(
        init: UserScreenController(),
        builder: (_) {
          return const UsersScreenBody();
        },
      ),
    );
  }
}
