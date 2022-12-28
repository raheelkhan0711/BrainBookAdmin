// ignore_for_file: must_be_immutable

import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  RichTextWidget({
    Key? key,
    this.firstTitle,
    this.secondTitle,
    this.onTap,
  }) : super(key: key);

  String? firstTitle;
  String? secondTitle;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: firstTitle,
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 13),
          children: <TextSpan>[
            TextSpan(
                text: secondTitle,
                style: GoogleFonts.poppins(color: fontColorDark, fontSize: 13),
                recognizer: TapGestureRecognizer()..onTap = onTap),
          ]),
    );
  }
}
