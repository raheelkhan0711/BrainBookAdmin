// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';

class TextAndButtonWidgets extends StatelessWidget {
  const TextAndButtonWidgets({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  final String title1;
  final String title2;
  //final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DashboardHomeText(
          title1: 'States',
          title2: 'You can see all the states here',
          title3: '',
        ),
        ButtonWidget(title: 'Add New States', onTap: () {}),
      ],
    );
  }
}
