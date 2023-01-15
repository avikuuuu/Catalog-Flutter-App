//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_catlog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "avki";

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catelog App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('welcomé to $days my world $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
