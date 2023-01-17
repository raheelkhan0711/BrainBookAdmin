// ignore_for_file: prefer_const_constructors
import 'package:brain_book_admin/Core/App-Utils/AppColor/colors.dart';
import 'package:flutter/material.dart';

class AskACopCard extends StatelessWidget {
  const AskACopCard({
    Key? key,
    this.row,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final Widget? row;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap ?? () => Get.toNamed(Routes.responseScreen),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Text("AOA"),
              Text(text),
              SizedBox(
                height: 10,
              ),
              //Text("I am trying to look for a tactical bad that I can put in my car. So that I can use it to store my tactical belt in the bag and probably put my change of clothes in there as well. Do you have any suggestions on tactical bags?"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "25/10/2021    7:31  PM",
                    style: TextStyle(color: fontColorLight),
                  ),
                  row ??
                      Row(
                        children: [
                          Image.asset(
                            "assets/startpage/46.png",
                            height: 25,
                          ),
                          Text("3", style: TextStyle(color: fontColorLight))
                        ],
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
