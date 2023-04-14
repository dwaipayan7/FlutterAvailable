import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Dwaipayan";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name to $days days of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
