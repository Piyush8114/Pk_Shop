import 'package:ecomerceapp/Navegated/Home_Screen.dart';
import 'package:ecomerceapp/Screen/Forget_Screen.dart';
import 'package:flutter/material.dart';

import '../Navegated/Navation_Screen.dart';
import 'SignUp_Screen.dart';

class Login_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 105,),

                Image.asset("assets/Ecomerce/login.png",width: 400,height: 200,),

                SizedBox(height: 35,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye)
                        ),
                      ),

                      SizedBox(height: 10,),

                      Align(
                        alignment: Alignment.bottomRight,
                        child:   TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Forget_Screen(),));
                          },
                          child: Text("Forget Password?",
                            style: TextStyle(fontSize:16,color: Color(0xFFEF6969) ),),
                        ),
                      ),

                      SizedBox(height: 25,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Navation_Screen(),));
                        },
                        child: Text("Log in",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(45),
                            backgroundColor: Color(0xFFEF6969),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))
                        ),
                      ),

                      SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have an Account? ",
                            style: TextStyle(fontSize:15,color: Colors.black54 ),),

                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_Screen(),));

                            },
                            child: Text("Sign up",
                              style: TextStyle(fontSize:17,color: Color(0xFFEF6969) ),),
                          ),
                        ],
                      )

                    ],
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
