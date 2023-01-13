import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Routes/app_pages.dart';
import 'package:brain_book_admin/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(ValidatorController());
    Get.put(GlobalController());
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //...This widget is the root of your application..//
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BrainBook AdminPanel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: ValidationBinding(),
      initialRoute: Routes.loginScreen,
      getPages: Pages.pages,
    );
  }
}
