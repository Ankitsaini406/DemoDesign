// ignore_for_file: file_names, constant_identifier_names

import 'dart:developer';
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:gymapp/view/Signup.dart';
import 'package:gymapp/view/dashboard.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isPressed = true;
  final backgroundColor = const Color(0xFFE7ECEF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/login.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Container(
                  height: 150,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  key: formKey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 550,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white60, Colors.white10],
                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.white30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                  focusColor: Colors.grey,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your email";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: "Password",
                                      focusColor: Colors.grey,
                                    ),
                                    obscureText: hidePassword,
                                    textInputAction: TextInputAction.next,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please enter your password";
                                      }
                                      return null;
                                    },
                                  ),
                                  hidePassword
                                      ? IconButton(
                                          icon:
                                              const Icon(Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              hidePassword = false;
                                            });
                                          },
                                        )
                                      : IconButton(
                                          icon: const Icon(Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              hidePassword = true;
                                            });
                                          },
                                        ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Forget Password ?",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                // color: Colors.green[600],
                                // width: double.infinity,
                                // height: 50,
                                // margin: const EdgeInsets.symmetric(horizontal: 15),
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(5),
                                //   color: Colors.green[600],
                                // ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DashboardPage(),
                                    ),
                                  );
                                  if (formKey.currentState?.validate() ==
                                      null) {
                                    log('data is null');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Please enter data'),
                                      ),
                                    );
                                  } else if (formKey.currentState!.validate()) {
                                    log('message');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Your data is submit'),
                                      ),
                                    );
                                  }
                                },
                                child: const Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Dont have an account ?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Register Now",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "- OR -",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  SignInButton(
                                    Buttons.Google,
                                    onPressed: () {},
                                  ),
                                  SignInButton(
                                    Buttons.Facebook,
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
