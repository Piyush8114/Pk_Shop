import 'package:ecomerceapp/Navegated/Cart_Screen.dart';
import 'package:flutter/material.dart';

import 'Contaner_Bottom_Model.dart';

class product_details_popup extends StatelessWidget {

  final iStyle = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w600,
    fontSize: 18
  );

  List<Color> clrs = [
    Colors.green,
    Colors.red,
    Colors.purpleAccent,
    Colors.pinkAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context, builder: (context) =>  Container(
          height: MediaQuery.of(context).size.height/2.5,
          decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Size : ",style: iStyle,),
                        SizedBox(height: 20,),
                        Text("Color : ",style: iStyle,),
                        SizedBox(height: 20,),
                        Text("Total : ",style: iStyle,),
                        SizedBox(height: 20,),
                      ],
                    ),

                    SizedBox(width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Row(
                         children: [
                           SizedBox(height: 10,),
                           Text("X",style: iStyle,),
                           SizedBox(width: 30,),
                           Text("L",style: iStyle,),
                           SizedBox(width: 30,),
                           Text("M",style: iStyle,),
                           SizedBox(width: 30,),
                           Text("XL",style: iStyle,),
                         ],
                       ),
                        SizedBox(height: 18,),
                        Container(
                          child: Row(
                            children: [
                              for(var i =0; i<4; i++)
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      color: clrs[i],
                                    // color: Colors.cyan,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("-",style: iStyle,),
                            SizedBox(width: 30,),
                            Text("1",style: iStyle,),
                            SizedBox(width: 30,),
                            Text("+",style: iStyle,),
                          ],
                        ),

                      ],
                    )
                  ],
                ),

                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Payment ",style: iStyle,),
                    Text("\$40.00",style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFDB3022),
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),

                SizedBox(height: 20,),
                InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Cart_Screen(),));
                 },
                  child:Contaner_Bottom_Model(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext: "Checkout",
                    bgColor: Color(0xFFDB3022),
                  )
                )

              ],
            ),
          ),
        ),
        );
      },
        child: Contaner_Bottom_Model(
          itext: "Buy now",
          bgColor: Color(0xFFEF6969),
          containerWidth:MediaQuery.of(context).size.width/1.5,
        )

    );
  }
}
