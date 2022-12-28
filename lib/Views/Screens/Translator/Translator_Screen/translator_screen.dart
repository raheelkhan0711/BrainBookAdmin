// ignore_for_file: unnecessary_import

import 'package:brain_book_admin/Views/Screens/Dashboard/DashBoard-Widgets/dashboard_appBar.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/Translator_Screen_Widgets/Translator_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Translator/Translator_Screen/translator_screen_controlller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TranslatorScreen extends GetView<TranslatorScreenController> {
  const TranslatorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [DashboardHomeBodyHeader()],
      ),
      body: GetBuilder<TranslatorScreenController>(
        init: TranslatorScreenController(),
        builder: (_) {
          return const TranslatorScreenBody();
        },
      ),
    );
  }
}
