import 'package:flutter/material.dart';

import 'pages/CartPage.dart';
import 'pages/HomePage.dart';
import 'pages/ItemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => HomePage(),
        'cartPage': (context) => CartPage(),
        'itemPage': (context) => ItemPage(),
      },
    );
  }
}
