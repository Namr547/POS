// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:pos/Screens/signIn_page.dart';
import 'package:pos/components/button.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: h / 60,
              ),
              // Image logo
              //container or sizedbox i was getting overflow error so i used AspectRatio
              AspectRatio(
                aspectRatio: 5,
                child: Center(
                  child: Image.asset('assets/images/splash.png'),
                ),
              ),
              SizedBox(
                height: h / 25,
              ),

              // Text Sign Up
              Text(
                'Forgot Your Password',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: h / 25,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Enter you Email TextFormField
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Your Email',
                          hintText: 'John Smith',
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value!;
                        },
                      ),
                      SizedBox(height: h / 25),

                      //New Password TextFormField
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'New Password',
                          hintText: 'abc@gmail.com',
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your New Password';
                          }
                          // we can add more email validation logic here if needed.
                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                      ),
                      SizedBox(height: h / 25),

                      //Re-Enter New Password TextFormField
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Re-Enter New Password',
                            hintText: '123456',
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            )),
                        obscureText: _isObscure,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Re-Enter New Password';
                          }
                          // we can add more password validation logic here if needed.
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),

                      SizedBox(height: h / 15),

                      //Button SignUp
                      MyButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            }
                          },
                          color: Colors.white,
                          text: 'Send',
                          tcolor: Color.fromRGBO(17, 12, 49, 1)),
                      SizedBox(height: h / 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
