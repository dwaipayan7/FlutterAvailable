// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demo_flutter/widgets/home_widgets/add_to_cart.dart';
import 'package:demo_flutter/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

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
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
        
                AddToCart(catalog: catalog,).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).h32(context),
            ),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(context.theme.accentColor).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Clita sed amet et voluptua aliquyam, aliquyam ipsum eirmod ipsum invidunt justo et, rebum est eirmod sed takimata stet labore elitr. Duo sadipscing clita sea et tempor justo magna. Diam no sed sed et ipsum amet, est dolore tempor aliquyam et duo et ea sanctus dolor. Labore gubergren sed et.".text
                    .textStyle(context.captionStyle)
                    .make().p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
