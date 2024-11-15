import 'package:ecomerceapp/Navegated/Cart_Screen.dart';
import 'package:ecomerceapp/Navegated/Favorites_Screen.dart';
import 'package:ecomerceapp/Navegated/Home_Screen.dart';
import 'package:ecomerceapp/Navegated/Profile_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Navation_Screen extends StatefulWidget {
  const Navation_Screen({super.key});

  @override
  State<Navation_Screen> createState() => _Navation_ScreenState();
}

class _Navation_ScreenState extends State<Navation_Screen> {
  int pageindex = 0;
  List<Widget> pages = [
    Home_Screen(),
    Cart_Screen(),
    Favorites_Screen(),
    Profile_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageindex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.qr_code,size: 20,),
          backgroundColor: Color(0xFFEF6969),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: pageindex,
        activeColor: Color(0xFFEF6969),
        inactiveColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        iconSize: 25,
        gapLocation: GapLocation.center,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index){
          setState(() {
            pageindex = index;
          });
        },
      ),
    );
  }
}
