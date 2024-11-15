import 'package:ecomerceapp/Screen/Payment_Method_Screen.dart';
import 'package:ecomerceapp/Screen/Successful_Order.dart';
import 'package:flutter/material.dart';

import '../Widget/Contaner_Bottom_Model.dart';
import 'Shipping_Address_Screen.dart';

class Order_Confirm_Screen extends StatelessWidget {
  const Order_Confirm_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shipping Address",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),),

                SizedBox(height: 15,),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )
                    ]
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dear Pro ",style: TextStyle(fontSize: 16,),),

                          TextButton(onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => Shipping_Address(),));

                          },  child: Text("Change", style: TextStyle(fontSize: 16,color: Color(0xFFDB3022),),))
                        ],
                        ),

                        Text("3 Newbridge Court ",style: TextStyle(fontSize: 16,),),
                        Text("Chino Hills CA, 805137, United States",style: TextStyle(fontSize: 16,),),

                      ],
                    ),
                  )
                ),

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),

                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_Method_Screen(),));
                    },  child: Text("Change", style: TextStyle(fontSize: 17,color: Color(0xFFDB3022),),))
                  ],
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2
                            )
                          ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset("assets/Ecomerce/picture1.png"),
                      ),
                    ),

                    SizedBox(width: 20,),
                    Text("**** **** 9608"),
                  ],
                ),


                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Method ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),

                  ],
                ),

                SizedBox(height: 15,),


                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:[
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/Ecomerce/Feedex.png",height: 20,),
                              ),
                              Text("2-7 Days")
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 20,),

                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:[
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text("Home Delivery",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16,color: Colors.indigo),),
                              Text("2-7 Days")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 45,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),

                    Text("\$300.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black,),)

                  ],
                ),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping fee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),

                    Text("\$15.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black,),)
                  ],
                ),

                Divider(height: 30,color: Colors.black54,),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Payment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),

                    Text("\$380.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFFF3032),),)
                  ],
                ),

                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Successful_Order(),));
                  },
                  child: Contaner_Bottom_Model(
                    itext: "Confirm Order",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFDB3022),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
