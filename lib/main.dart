import 'package:ecomerceapp/Navegated/Navation_Screen.dart';
import 'package:ecomerceapp/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EComerce Shoping',
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969)
      ),
      // home: Navation_Screen(),
      home:Splash_Screen()
    );
  }
}
