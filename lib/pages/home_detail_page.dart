import 'package:flutter/material.dart';
import 'package:flutter_catlog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catlog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 20),
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(130, 50)
          ],
        ).p20(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                    tag: Key(
                      catalog.id.toString(),
                    ),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl
                        .color(context.accentColor)
                        .bold
                        .xl4
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Amet elit officia veniam enim officia sint excepteur non enim ex eiusmod aliqua id. Deserunt et ad pariatur nisi mollit. Nisi id excepteur anim cillum qui officia duis in."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                  ]).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
