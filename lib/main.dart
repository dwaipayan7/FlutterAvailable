import 'package:demo_flutter/pages/home_page.dart';
import 'package:demo_flutter/pages/login_page.dart';
import 'package:demo_flutter/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:demo_flutter/widgets/themes.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme,
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,
      routes: {
        Myroutes.homeRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
