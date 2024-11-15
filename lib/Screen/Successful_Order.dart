import 'dart:async';

import 'package:ecomerceapp/Navegated/Navation_Screen.dart';
import 'package:ecomerceapp/Widget/Contaner_Bottom_Model.dart';
import 'package:flutter/material.dart';

class Successful_Order extends StatefulWidget {
  const Successful_Order({super.key});

  @override
  State<Successful_Order> createState() => _Successful_OrderState();
}

class _Successful_OrderState extends State<Successful_Order> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/Ecomerce/success.png",),
              SizedBox(height: 20,),
              Text("Successful !",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,letterSpacing: 1),),

              SizedBox(height: 20,),

              Text("Your order will be delivered soon.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              Text("Thank you ! for choosing our app.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400))
            ],
          ),

          SizedBox(height: 40,),
          Padding(padding: EdgeInsets.all(20),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Navation_Screen(),));
            },
            child: Contaner_Bottom_Model(
              itext: "Continue Shopping",
              bgColor: Color(0xFFDB3022),
              containerWidth: MediaQuery.of(context).size.width,
            ),
          ),
          )
        ],
      ),
    );
  }
}
