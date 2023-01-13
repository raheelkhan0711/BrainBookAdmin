// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:brain_book_admin/Routes/app_routes.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/LogOut/logout_Contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class LogoutScreen extends GetView<LogoutController> {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Dialog(
              child: Container(
                  height: 250,
                  width: 450,
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Text('Are you Sure You want To logout?'),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonWidget(
                                  title: 'Cancel',
                                  onTap: () {
                                    //  Get.back();
                                  }),
                              const SizedBox(
                                width: 50,
                              ),
                              ButtonWidget(
                                  title: 'Logout',
                                  onTap: () {
                                    Get.offAllNamed(Routes.loginScreen);
                                  }),
                            ],
                          ),
                        )
                      ])),
            ),
          )
        ],
      ),
    );
  }
}
