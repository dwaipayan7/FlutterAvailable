import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import 'package:demo_flutter/models/catalog.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Dwaipayan";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
