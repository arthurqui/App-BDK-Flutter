import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_controler.dart';
import 'package:primeiro_projeto/app_database.dart';
import 'package:primeiro_projeto/loginpage.dart';

import 'contador_page.dart';
import 'calc_lvl.dart';
import 'home_page.dart';

class Appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.grey[900],
            brightness: AppController.instance.darkTheme
                ? Brightness.light
                : Brightness.dark,
          ),
          routes: {
            '/': (context) => LoginPage(bdk: Database()),
            '/home': (context) => HomePage(),
            '/contador': (context) => ContadorPage(),
            '/calc': (context) => CalcPage(),
          },
        );
      },
    );
  }
}
