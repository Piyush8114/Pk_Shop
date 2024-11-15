import 'package:ecomerceapp/Widget/Contaner_Bottom_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/Payment_Method_Screen.dart';

class Cart_Screen extends StatelessWidget {

  List imageList = [
    "assets/Ecomerce/img19.png",
    "assets/Ecomerce/img12.png",
    "assets/Ecomerce/img4.png",
    "assets/Ecomerce/img10.png",
  ];

  List productTitle = [
    "Warm Zipper",
    "Child Win",
    "Zipper Win",
    "Knitted Woo!"
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$340",
    "\$250",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(fontWeight: FontWeight.bold),),
        leading: BackButton(),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
           Container(
             // height: 200,
             child: ListView.builder(
               shrinkWrap: true,
               scrollDirection: Axis.vertical,
               physics: NeverScrollableScrollPhysics(),
               itemCount: imageList.length,
               itemBuilder: (context, index) {
               return Container(
                 margin: EdgeInsets.symmetric(vertical: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Checkbox(splashRadius: 20, activeColor: Color(0xFFFF3632), value: true, onChanged: (val) { },
                     ),
                     ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.asset(imageList[index],
                       height: 80,
                       width: 80,
                       ),
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(productTitle[index],style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                           color: Colors.black87
                         ),),

                         SizedBox(height: 10,),

                         Text("Hooded Jecket",style: TextStyle(fontSize: 16,color: Colors.black26),),

                         SizedBox(height: 10,),
                         Text(prices[index],style: TextStyle(color: Color(0xFFDB3022),fontWeight: FontWeight.w900,fontSize: 18),)

                       ],
                     ),
                     Row(
                       children: [
                         Icon(CupertinoIcons.minus,color: Colors.green,),
                         SizedBox(width: 5,),
                         Text("1",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                         SizedBox(width: 5,),
                         Icon(CupertinoIcons.plus,color: Color(0xFFDB3022),),

                       ],
                     )
                   ],
                 ),
               );
             },),
           ),

            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Checkbox(splashRadius: 15, value: false, onChanged: (value) {},)
              ],
            ),
            Divider(thickness: 1,color: Colors.black26,height: 1,),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                
                Text("\$350.40",style: TextStyle(color: Color(0xFFDB3022),fontWeight: FontWeight.w900,fontSize: 18))
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_Method_Screen(),));
              },
              child: Contaner_Bottom_Model(
                itext: "Checkout",
                bgColor:Color(0xFFDB3022) ,
                containerWidth: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
      ),
    );
  }
}
