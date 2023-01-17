// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';

class DeleteCard extends StatelessWidget {
  const DeleteCard({
    Key? key,
    required this.text,
    required this.onTapDelete,
    required this.onTapCard,
    this.subtitile
  }) : super(key: key);
  final String text;
  final void Function() onTapDelete;
  final void Function() onTapCard;
  final Widget? subtitile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapCard,
      child: Container(
        height: 70,
        child: Card(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 4,
          ),
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child:ListTile(
                title:  Text(text),
                subtitle: subtitile??null,
                trailing:  GestureDetector(
                  onTap: onTapDelete,
                  child: Image.asset(
                    "assets/startpage/58.png",
                    scale: 3,
                  ),
                ),
              )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   // ignore: prefer_const_literals_to_create_immutables
            //   children: [
            //     Text(text),
            //     GestureDetector(
            //       onTap: onTap,
            //       child: Image.asset(
            //         "assets/startpage/58.png",
            //         scale: 3,
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}