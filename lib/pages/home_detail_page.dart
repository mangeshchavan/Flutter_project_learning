import 'package:flutter/material.dart';
import 'package:myapp/models/catalog.dart';
import 'package:myapp/widget/home_widget/add_to_cart.dart';
import 'package:myapp/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            AddToCart(
              catalog: catalog,
            ).wh(130, 50)
          ],
        ).py32(),
      ),
      body: SafeArea(
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: SafeArea(
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.lg.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  "Nonumy elitr diam et et accusam sed. Rebum amet ea sanctus dolores sea et, erat sea lorem ut rebum dolores, dolores stet invidunt labore takimata diam nonumy. Sadipscing dolore justo rebum et et, rebum diam est elitr diam. Ea takimata."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .py16(),
                  10.heightBox,
                ]).py64(),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
