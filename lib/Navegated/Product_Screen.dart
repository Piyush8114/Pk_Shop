import 'package:ecomerceapp/Widget/product_details_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product_Screen extends StatelessWidget {

  List<String> images=[
    "assets/Ecomerce/img19.png",
    "assets/Ecomerce/img12.png",
    "assets/Ecomerce/img4.png",
    "assets/Ecomerce/img10.png",
    "assets/Ecomerce/img13.png",
    "assets/Ecomerce/img7.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Overview",style: TextStyle(fontWeight: FontWeight.bold),),
        leading: BackButton(),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 430,
                width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    isAssets: true,
                    imagesLink: images,
                    autoPlay: true,
                    sliderHeight: 400,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 30,),
                        Text("Warm Zipper",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),),

                        Text("Hooded Jecket",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        ),
                        )
                      ],
                    ),
                    Text("\$300.00",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFFEF6969)
                    ),)
                  ],
                ),

                SizedBox(height: 10,),

            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 25,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),

                SizedBox(height: 10,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Cool, windy weather is on its way.Send him out \n the door in a jacket he wants to wear. Warm\n ZooperHooded Jacket.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                  ),
                  ),
                ),

                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.black38.withOpacity(0.05),
                      ),
                      child: Center(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFFEF6969),)),
                    ),

                    SizedBox(width: 15,),

                    product_details_popup(),

                  ],
                ),



              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
