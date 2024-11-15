import 'package:ecomerceapp/Screen/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Onboarding_Screen extends StatelessWidget {

  final introKey =GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final pagedecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero

    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          image: Image.asset("assets/Ecomerce/splash1.png"),
          decoration: pagedecoration,
        ),

        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          image: Image.asset("assets/Ecomerce/splash4.png"),
          decoration: pagedecoration,
        ),

        PageViewModel(
          title: "Free Delivery",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          image: Image.asset("assets/Ecomerce/splash2.png"),
          decoration: pagedecoration,
        ),

        PageViewModel(
          title: "Quick Delivery",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          image: Image.asset("assets/Ecomerce/splash3.png"),
          decoration: pagedecoration,
        ),

        PageViewModel(
          title: "Confirm Order",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("assets/Ecomerce/splash5.png"),
          decoration: pagedecoration,
          footer: Padding(
             padding: EdgeInsets.only(left: 15,right: 15,top: 30),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen(),));
              },
              child: Text("Let's Shop",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
                backgroundColor: Color(0xFFEF6969),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8))
              ),
            ),
          )
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text("Back",style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFEF6969),
      ),),

      next: Text("Next",style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFEF6969),
      ),),

      done: Text("Done",style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFEF6969),
      ),),

      skip: Text("Skip",style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFEF6969),
      ),),

      onDone: (){},
      onSkip: (){},

      dotsDecorator: DotsDecorator(
        color: Colors.black26,
        activeColor: Color(0xFFEF6969),
        activeSize: Size(20,10),
        size: Size.square(10),
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
