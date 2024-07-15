// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  Color textColor;
  Color backColor;
  String buttonText;

  MyElevatedButton(
      {super.key,
      required this.backColor,
      required this.textColor,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(w * 0.7, h * 0.06), // Button size
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
