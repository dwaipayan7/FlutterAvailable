import 'package:demo_flutter/pages/cart_page.dart';
import 'package:demo_flutter/pages/home_page.dart';
import 'package:demo_flutter/pages/login_page.dart';
import 'package:demo_flutter/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/widgets/themes.dart';

void main(List<String> args) {
  runApp(const Myapp());
}    

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,
      routes: {
        Myroutes.homeRoute: (context) => const LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => const LoginPage(),
        Myroutes.cartRoute:(context) => const CartPage(),
      },
    );
  }
}
