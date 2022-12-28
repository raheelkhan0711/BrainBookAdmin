// ignore_for_file: prefer_const_constructors
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:flutter/material.dart';

class ListViewText extends StatelessWidget {
  const ListViewText({
    Key? key,
    required this.text,
    this.textColor,
    this.divider,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Widget? divider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider ?? Container(),
        // index == warratnsController.warrantLsit.length-1?Divider(height: 10,color: Colors.black,):Container(),
        ListTile(
          leading: Image.asset(
            "assets/startpage/33.png",
            height: 20,
            color: fontColorDark,
          ),
          title: Transform.translate(
            offset: Offset(-30, 10),
            child: Text(
              text
              //warratnsController.warrantLsit[index]
              ,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                // index == warratnsController.warrantLsit.length-1? fontColorDark:Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
