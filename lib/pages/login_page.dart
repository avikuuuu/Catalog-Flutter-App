import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeBtn = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
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
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeBtn ? 60 : 10)),
                      ),
                    )
                    // ElevatedButton(
                    //   style:
                    //       ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
                    //   child: Text("login"),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
