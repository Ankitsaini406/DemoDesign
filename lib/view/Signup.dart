// ignore_for_file: file_names, constant_identifier_names

import 'dart:developer';
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gymapp/view/Loginpage.dart';
import 'package:intl/intl.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool confhHidePassword = true;
  bool isPressed = true;
  final backgroundColor = const Color(0xFFE7ECEF);
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController dateTime = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                // const Text(
                //   "Sign in to continue",
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontWeight: FontWeight.normal,
                //   ),
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                Form(
                  key: formKey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 820,
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
                                  icon: Icon(Icons.person),
                                  labelText: "Name",
                                  focusColor: Colors.grey,
                                ),
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your name";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.email),
                                  labelText: "Email",
                                  focusColor: Colors.grey,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                          .hasMatch(value)) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.phone),
                                  labelText: "Phone Number",
                                  focusColor: Colors.grey,
                                ),
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validator: ((value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter phone number";
                                  }
                                  return null;
                                }),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.location_on),
                                  labelText: "Address",
                                  focusColor: Colors.grey,
                                ),
                                keyboardType: TextInputType.streetAddress,
                                textInputAction: TextInputAction.next,
                                validator: ((value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your address";
                                  }
                                  return null;
                                }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: dateTime,
                                decoration: const InputDecoration(
                                  labelText: "Date of Brithday",
                                  focusColor: Colors.grey,
                                  icon: Icon(Icons.calendar_today),
                                ),
                                textInputAction: TextInputAction.next,
                                validator: ((value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your date of brithday";
                                  }
                                  return null;
                                }),
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100),
                                  );
                                  if (pickedDate != null) {
                                    log("Date is : $pickedDate");
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(pickedDate);
                                    log("Formate date is : $formattedDate");
                                    setState(() {
                                      dateTime.text = formattedDate;
                                    });
                                  } else {
                                    log('date time is null');
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  TextFormField(
                                    controller: password,
                                    decoration: const InputDecoration(
                                      // prefixIcon: Icon(Icons.security),
                                      icon: Icon(Icons.security),
                                      labelText: "Password",
                                      focusColor: Colors.grey,
                                    ),
                                    obscureText: hidePassword,
                                    textInputAction: TextInputAction.next,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Passowrd should not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                  hidePassword
                                      ? IconButton(
                                          icon: const Icon(Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              hidePassword = false;
                                            });
                                          },
                                        )
                                      : IconButton(
                                          icon:
                                              const Icon(Icons.visibility_off),
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
                              Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  TextFormField(
                                      controller: repassword,
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.security),
                                        labelText: "Confirm Password",
                                        focusColor: Colors.grey,
                                      ),
                                      obscureText: confhHidePassword,
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Passowrd should not be empty';
                                        }
                                        if (value != password.text) {
                                          return 'Password not match';
                                        }
                                        return null;
                                      }),
                                  confhHidePassword
                                      ? IconButton(
                                          icon: const Icon(Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              confhHidePassword = false;
                                            });
                                          },
                                        )
                                      : IconButton(
                                          icon:
                                              const Icon(Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              confhHidePassword = true;
                                            });
                                          },
                                        ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
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
                                    "Sign Up",
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
                                    "You already have an account.",
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
                                              const Loginpage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // const Text(
                              //   "- OR -",
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Column(
                              //   children: [
                              //     SignInButton(
                              //       Buttons.Google,
                              //       onPressed: () {},
                              //     ),
                              //     SignInButton(
                              //       Buttons.Facebook,
                              //       onPressed: () {},
                              //     ),
                              //   ],
                              // )
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
