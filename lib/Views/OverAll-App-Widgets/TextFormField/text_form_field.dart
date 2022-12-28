// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_null_in_if_null_operators, prefer_function_declarations_over_variables, must_be_immutable

import 'package:flutter/material.dart';

//====== TextFormField Widget ============

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {Key? key,
      this.inkWell,
      this.icon,
      this.msg,
      required this.title,
      this.obscureText,
      required this.controller,
      this.validator,
      this.maxLine})
      : super(key: key);

  final Widget? inkWell;
  final Icon? icon;
  final String title;
  final String? msg;
  final bool? obscureText;
  final TextEditingController? controller;
  final int? maxLine;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: maxLine ?? 1,
        //autofocus: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: inkWell ?? null,
          prefixIcon: icon ?? null,
          //Icon(Icons.person_outline),
          filled: true,
          fillColor: Colors.white,
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          // --- when user does not interact with -----
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 4.0, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: TextInputType.text,
        // validator: (value)=>value!.length<2?"Please fill the field":null

        validator: validator,
      ),
    );
  }
}
