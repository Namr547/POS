// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(17, 12, 49, 1),
          title: Center(
              child: Text(
            'SETTINGS & MORE',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/onboarding.png'),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              'Nammar Khan',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              'namrullah10@gmail.com',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            rowData('Order History', () {}),
            rowData('My Address', () {}),
            rowData('My Card', () {}),
            rowData('Settings', () {}),
            rowData('Status', () {})
          ],
        ));
  }

  Widget rowData(String name, final onPressed) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
