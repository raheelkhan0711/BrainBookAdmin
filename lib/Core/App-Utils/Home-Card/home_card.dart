// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.onTap,
    required this.text,
    required this.imagePath,
    this.isLock = false,
    this.divider,
  }) : super(key: key);

  final void Function() onTap;
  final String text;
  final String imagePath;
  final bool isLock;
  final Widget? divider;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        divider??Container(),
        Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 10.0),
          child: InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(10),),
              child: ListTile(
                title: Text(
                  text,style: TextStyle(fontSize: 11.5),
                ),
                leading: Image.asset(imagePath,height: 35,),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          child: isLock
              ? Image.asset(
            "assets/startpage/85.png",
            height: 30,
          )
              : Container(),
        ),
      ],
    );
  }
}