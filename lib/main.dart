import 'package:ecommerce_flutter/pages/home_pages.dart';
import 'package:ecommerce_flutter/pages/item_pages.dart';
import 'package:ecommerce_flutter/pages/splash_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>SplashPage(),
        "/homepage":(context)=>HomePage(),
        // "/itempage":(context)=>ItemPage(),
      },
    );
  }
}
