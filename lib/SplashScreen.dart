import 'dart:async';

import 'package:ecomerceapp/Screen/Onboarding_Screen.dart';
import 'package:flutter/material.dart';

import 'Navegated/Home_Screen.dart';

class Splash_Screen extends StatefulWidget {

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3 ),() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) =>Onboarding_Screen(),)),);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/Ecomerce/splashs.jpg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,size: 200,color: Color(0xFFEF6969),),
            Text("PK SHOP",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),)
          ],
        ),

      )
    );
  }
}
