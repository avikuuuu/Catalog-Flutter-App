import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_icon.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        hintText: "Enter your username",
                        hintStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    child: Text("login"),
                    onPressed: () {
                      print("hi gogo");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
