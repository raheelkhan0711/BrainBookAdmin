// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class DashboardHomeBodyHeader extends StatelessWidget {
  const DashboardHomeBodyHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, top: 10),
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: 70,
                height: 70,
                child: ClipOval(
                  child: Image.asset(
                    "assets/startpage/1.png",
                    scale: 1.5,
                  ),
                ),
              )),
          const SizedBox(
            width: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello,George',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                'admin',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
