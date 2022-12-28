import 'package:brain_book_admin/Views/Screens/Dashboard_Home/home_screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_body.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/DashBoard-Widgets/dashboard_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [DashboardHomeBodyHeader()],
        ),
        body: const DashboardHomeBody(),
      ),
    );
  }
}
