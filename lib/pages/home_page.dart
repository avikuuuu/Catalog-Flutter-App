//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/drawer.dart';
import 'package:flutter_catlog/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: ((context, index) {
              return ItemWidgets(
                item: dummyList[index],
              );
            })),
      ),
      drawer: MyDrawer(),
    );
  }
}
