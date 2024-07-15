// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final color;
  final tcolor;
  final String text;
  const MyButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.text,
      required this.tcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        height: 60,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: tcolor, fontWeight: FontWeight.bold, fontSize: 16)),
        ),
      ),
    );
  }
}
