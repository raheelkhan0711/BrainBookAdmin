import 'package:flutter/material.dart';

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget({
    Key? key,
    required this.text,
    this.textColor,
    this.color = false,
  }) : super(key: key);
  final Color? textColor;
  final String text;
  final bool color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color ? textColor : Colors.black),
      ),
    );
  }
}
