import 'package:flutter/material.dart';

class Favorites_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text(
          "Favorites Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      )),
    );
  }
}
