// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:brain_book_admin/Views/Screens/Dashboard/dashboard_screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashboardHomeComponents extends GetView<DashBoardController> {
  const DashboardHomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Obx(() => DashboardHomeItemList(
                    title1: controller.pendingdResult1.count.toString(),
                    title2: 'States',
                    image: 'assets/startpage/7.png')),
                const SizedBox(
                  width: 50,
                ),
                Obx(() => DashboardHomeItemList(
                    title1: controller.pendingResult2.count.toString(),
                    title2: 'Users',
                    image: 'assets/startpage/51.png')),
                const SizedBox(
                  width: 50,
                ),
                const DashboardHomeItemList(
                    title1: '0',
                    title2: 'Lorium Lpsom',
                    image: 'assets/startpage/67.png'),
                const SizedBox(
                  width: 50,
                ),
                const DashboardHomeItemList(
                    title1: '0',
                    title2: 'Lorium Lpsom',
                    image: 'assets/startpage/67.png'),
                const SizedBox(
                  width: 50,
                ),
                const DashboardHomeItemList(
                    title1: '0',
                    title2: 'Lorium Lpsom',
                    image: 'assets/startpage/67.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class DashboardHomeText extends StatefulWidget {
  const DashboardHomeText({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3,
  }) : super(key: key);
  final String title1;
  final String title2;
  final String title3;

  @override
  State<DashboardHomeText> createState() => _Dashboard_textState();
}

class _Dashboard_textState extends State<DashboardHomeText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              widget.title1,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title2,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title3,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
