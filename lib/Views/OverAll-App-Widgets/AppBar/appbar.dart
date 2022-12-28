// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, annotate_overrides, unnecessary_null_in_if_null_operators
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({
    Key? key,
    required this.title,
    this.onTap,
    this.txtBtnTitle,
    this.image = false,
  }) : super(key: key);
  final String title;
  final void Function()? onTap;
  final String? txtBtnTitle;
  final bool image;

  @override
  Size get preferredSize => const Size.fromHeight(65);

  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: linearColor),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Get.back(),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 15),
      ),
      actions: [
        TextButton(
            onPressed: onTap ?? null,
            child: image
                ? Image.asset(
                    "assets/startpage/43.png",
                    scale: 3.5,
                  )
                : Text(
                    txtBtnTitle ?? "",
                    style: TextStyle(color: Colors.white),
                  )),
      ],
      centerTitle: true,
    );
  }
}
