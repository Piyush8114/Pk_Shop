import 'package:ecomerceapp/Screen/Order_Confirm_Screen.dart';
import 'package:ecomerceapp/Widget/Contaner_Bottom_Model.dart';
import 'package:flutter/material.dart';

class Shipping_Address extends StatelessWidget {
  const Shipping_Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Shipping Address"),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    labelText: "Name"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Mobile Number"
                  ),
                ),


                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Email Address"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Address"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "City"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "State/Province/Region"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Zip Code(Postal Code)"
                  ),
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Country"
                  ),
                ),

                SizedBox(height: 30,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) =>  Order_Confirm_Screen(),));
                  },
                  child: Contaner_Bottom_Model(
                    itext: "Add Address",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFDB3022),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
