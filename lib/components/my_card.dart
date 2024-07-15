// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final color;
  final String imagePath;

  const MyCard(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(17)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: h / 100,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h / 300,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h / 100,
                ),
                Text(
                  '\$$price',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              width: w / 2.5,
              height: h / 5,
              child: Image.asset(imagePath, fit: BoxFit.fill),
            )
          ],
        ),
      ),
    );
  }
}
