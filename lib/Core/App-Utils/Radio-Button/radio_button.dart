import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({
    Key? key,
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final String groupValue;
  final String value;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 3.0,
      title: Text(
        title,
      ),
      leading: Radio(
        groupValue: groupValue,
        value: value,
        onChanged: onChanged,
        toggleable: false,
      ),
    );
  }
}