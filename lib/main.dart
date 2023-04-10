import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child:Center(
        child: Container(
          child: const Text("Welcome to 30 days of flutter"),
        ),
        ),
      ),
    );
  }
}

