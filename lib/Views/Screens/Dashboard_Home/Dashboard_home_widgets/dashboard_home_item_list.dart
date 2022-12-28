// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class DashboardHomeItemList extends StatelessWidget {
  const DashboardHomeItemList({
    Key? key,
    required this.image,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  final String image;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 1.5,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title1,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title2,
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
