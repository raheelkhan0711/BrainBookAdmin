// ignore_for_file: must_be_immutable, prefer_const_constructors, unnecessary_null_in_if_null_operators

import 'package:brain_book_admin/Core/App-Utils/AppColor/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required this.title,
      required this.onTap,
      this.padding,
      this.borderRadiusGeometry,
      this.borderRadiusGeometry2,
      this.icon})
      : super(key: key);

  String title;
  VoidCallback? onTap;
  EdgeInsetsGeometry? padding;
  BorderRadiusGeometry? borderRadiusGeometry;
  BorderRadiusGeometry? borderRadiusGeometry2;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            gradient: linearColor,
            borderRadius: borderRadiusGeometry ?? BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: onTap,
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: icon ?? null,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),

          style: ElevatedButton.styleFrom(
              //  primary:,
              backgroundColor: Colors.transparent,
              // onPrimary: Colors.transparent,
              padding:
                  padding ?? EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      borderRadiusGeometry2 ?? BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
