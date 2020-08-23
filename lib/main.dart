import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/screens/product_screen.dart';
import 'package:e_commerce_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Shopping',
      theme: ThemeData(
        fontFamily: 'Regular',
        primaryColor: KMainColor,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProductScreen.id: (context) => ProductScreen(),
      },
    );
  }
}
