import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;

  final _formKey = GlobalKey<FormState>();
  MoveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "welcome $name",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
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
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "password cannoţ be empty";
                          } else if (value.length < 6) {
                            return "password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: context.theme.highlightColor,
                        borderRadius:
                            BorderRadius.circular(changeBtn ? 60 : 10),
                        child: InkWell(
                          onTap: () => MoveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeBtn ? 50 : 150,
                            height: 40,
                            alignment: Alignment.center,
                            child: changeBtn
                                ? Icon(Icons.done)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
