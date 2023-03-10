import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("\$${item.name} pressed");
        },
        leading: Image.network(
          item.image,
          errorBuilder: (context, o, s) {
            print(o.toString());
            return Icon(Icons.image_not_supported, size: 40);
          },
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
