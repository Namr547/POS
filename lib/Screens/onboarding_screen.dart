// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:pos/Screens/signIn_page.dart';
import 'package:pos/components/button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                height: h / 2.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                        aspectRatio: 3,
                        child: Center(
                          child: Image.asset('assets/images/onboarding.png'),
                        )),
                    SizedBox(
                      height: h / 40,
                    ),

                    // Text Smart Online POS
                    Text(
                      'Smart Online POS',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                )),
            SizedBox(
              height: h / 5,
            ),
            MyButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              color: Colors.white,
              text: 'Get Started',
              tcolor: Color.fromRGBO(17, 12, 49, 1),
            )
          ],
        ),
      ),
    );
  }
}
