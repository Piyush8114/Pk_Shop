import 'package:ecomerceapp/Screen/Shipping_Address_Screen.dart';
import 'package:ecomerceapp/Widget/Contaner_Bottom_Model.dart';
import 'package:flutter/material.dart';

class Payment_Method_Screen extends StatefulWidget {
  const Payment_Method_Screen({super.key});

  @override
  State<Payment_Method_Screen> createState() => _Payment_Method_ScreenState();
}

class _Payment_Method_ScreenState extends State<Payment_Method_Screen> {


  int _type =1;
  void _handelRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        centerTitle: true,
         automaticallyImplyLeading: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==1 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 1, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("Credit Card",style: _type == 1 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Spacer(),
                          Image.asset("assets/Ecomerce/picture1.png",width: 35),
                          SizedBox(width: 8,),
                          Image.asset("assets/Ecomerce/mastercard.png",width: 35),
                        ],
                      ),
                    ),
                  ),

                ),

                // ******************************************************************************

                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==2 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("RuPay",style: _type == 2 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Image.asset("assets/Ecomerce/picture3.png",width: 70,height: 70,fit: BoxFit.cover,)
                        ],
                      ),
                    ),
                  ),

                ),

                // *********************************************************************************

                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==2 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("Paytm",style: _type == 2 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Image.asset("assets/Ecomerce/picture4.png",width: 70,height: 50,fit: BoxFit.cover,)
                        ],
                      ),
                    ),
                  ),

                ),


                // *********************************************************************************

                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==2 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("Amazon Pay",style: _type == 2 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Image.asset("assets/Ecomerce/picture5.png",width: 70,height: 70,fit: BoxFit.cover,)
                        ],
                      ),
                    ),
                  ),

                ),


                // *********************************************************************************

                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==2 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("G Pay",style: _type == 2 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Image.asset("assets/Ecomerce/gpay.png",width: 60)
                        ],
                      ),
                    ),
                  ),

                ),


                // *********************************************************************************

                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  // margin: EdgeInsets.only(right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type ==2 ? Border.all(width: 1, color: Color(0xFFFF3032)) : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handelRadio,activeColor: Color(0xFFFF3032),
                              ),

                              Text("Phone Pay",style: _type == 2 ? TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.black87) : TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          Image.asset("assets/Ecomerce/phonepay.png",width: 70,height: 70,fit: BoxFit.cover,)
                        ],
                      ),
                    ),
                  ),

                ),

                ////////////////////////////////////////////////////////////////////////////////////////

                SizedBox(height: 70,),
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

                SizedBox(height: 15,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Shipping_Address(),));
                  },
                  child: Contaner_Bottom_Model(
                    itext: "Payment Now",
                    containerWidth: size.width,
                    bgColor: Color(0xFFDB3022),
                  ),
                ),
              ],
            ),
          ),
          )
        ),
      ),

    );
  }
}



