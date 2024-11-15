import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'Product_Screen.dart';

class Home_Screen extends StatelessWidget {
  List<String> tabs = ["All", "Category", "Top", "Recommend"];

  List imagelist = [
    "assets/Ecomerce/mypic1.jpg",
    "assets/Ecomerce/mypic2.jpg",
    "assets/Ecomerce/mypic3.jpg",
    "assets/Ecomerce/mypic5.jpg",
    "assets/Ecomerce/mypic6.jpg",
    "assets/Ecomerce/mypic7.jpg",
    "assets/Ecomerce/mypic8.jpg",
    "assets/Ecomerce/img14.png",
    "assets/Ecomerce/img17.png",
    "assets/Ecomerce/img12.png",
    "assets/Ecomerce/img15.png",
    "assets/Ecomerce/img19.png",
    "assets/Ecomerce/img13.png",
    "assets/Ecomerce/img18.png",
    "assets/Ecomerce/img14.png",
    "assets/Ecomerce/img16.png",
  ];

  List imagetitle = ["Shirt & Zinc", "Kurta", "Court Shirt", "Check Shirt","Winter Cloth", "Stylish shirt", "Cap Shirt", "Stylish Zince","Men Court", "Suit", "Shirt", "Girls Jecket","Girls Top", "Black Tshirt", "Stylish Shirt", "Stylish Zince"];

  List prices = [
    "Rs 765",
    "Rs 885",
    "Rs 235",
    "Rs 945",
    "Rs 265",
    "Rs 595",
    "Rs 805",
    "Rs 325",
    "Rs 765",
    "Rs 885",
    "Rs 235",
    "Rs 945",
    "Rs 265",
    "Rs 595",
    "Rs 805",
    "Rs 325",
  ];

  List Review = ["54", "120", "345", "540","504", "720","875", "440","54", "120", "345", "540","504", "720","875", "440"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(15),
                           ),
                        child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFFEF6969),
                                ),
                                labelText: "Search your Product",
                                border: InputBorder.none))),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xFFEF6969),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                ////////////////////////////////////////////////////////////////////////////////////////////
            ImageSlideshow(
              width: double.infinity,
              height: 150,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              children: [
                Image.asset(
                  'assets/Ecomerce/banner1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Ecomerce/banner4.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Ecomerce/banner3.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Ecomerce/banner2.png',
                  fit: BoxFit.cover,
                ),
              ],
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
            ),

                ////////////////////////////////////////////////////////////////////////////////////////////

                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 280,
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 180,
                          width: 150,
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 180,
                                width: 150,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Product_Screen(),));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          imagelist[index],
                                          fit: BoxFit.cover,
                                          height: 180,
                                          width: 150,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )),
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                imagetitle[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 22,
                                  ),
                                  Text('(' + Review[index] + ')'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    prices[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),

                ///////////////////////////////////////////////////////////////////////////////////////////////

                SizedBox(
                  height: 10,
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Newest Product",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                GridView.builder(
                  shrinkWrap: true,
                  itemCount: imagetitle.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.58,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Product_Screen(),));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imagelist[index],
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            imagetitle[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 22,
                              ),
                              Text('(' + Review[index] + ')'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                prices[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
