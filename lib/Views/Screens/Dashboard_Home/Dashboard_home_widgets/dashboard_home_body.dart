// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_cartisian_chart.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:flutter/material.dart';

class DashboardHomeBody extends StatelessWidget {
  const DashboardHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  const DashboardHomeText(
                    title1: 'Welcome Lorium Lpsome',
                    title2: 'Hi,Your anylitic are all set',
                    title3: '',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  DashboardHomeComponents(),
                  SizedBox(
                    height: 60,
                  ),
                  DashboardHomeText(
                    title1: 'See Your Statistics',
                    title2: '',
                    title3: '',
                  ),
                  DashboardHomeCartisianChart(),
                ])),
      ),
    );
  }
}
