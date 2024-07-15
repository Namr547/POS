// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:pos/Screens/home_page.dart';
import 'package:pos/Screens/signIn_page.dart';
import 'package:pos/components/button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  bool _isObscure = true;
  bool _isAgreed = false;

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
                height: h / 20,
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
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: h / 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Full Name TextFormField
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'John Smith',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your full name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _name = value!;
                            },
                          ),
                          SizedBox(height: h / 25),

                          //Email TextFormField
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'abc@gmail.com',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              // we can add more email validation logic here if needed.
                              return null;
                            },
                            onSaved: (value) {
                              _email = value!;
                            },
                          ),
                          SizedBox(height: h / 25),

                          //Password TextFormField
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: '123456',
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade500),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade200,
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
                                return 'Please enter your password';
                              }
                              // we can add more password validation logic here if needed.
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                          ),

                          //Text I agree with trems and Privacy Policy
                          Row(
                            children: [
                              Checkbox(
                                value: _isAgreed,
                                onChanged: (value) {
                                  setState(() {
                                    _isAgreed = value ?? false;
                                  });
                                },
                              ),
                              Text(
                                'I agree with trems and',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              SizedBox(
                                width: w / 50,
                              ),
                              Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          SizedBox(height: h / 15),

                          //Button SignUp
                          MyButton(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  // Now we can use _email and _password for authentication or other purposes.
                                  if (!_isAgreed) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Please agree to the terms and Privacy Policy.'),
                                      ),
                                    );
                                    return;
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                }
                              },
                              color: Color.fromRGBO(17, 12, 49, 1),
                              text: 'Sign Up',
                              tcolor: Colors.white),
                          SizedBox(height: h / 40),

                          //text Already have an account Sign In
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              SizedBox(
                                width: w / 60,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()));
                                },
                                child: Text('Sign In',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
