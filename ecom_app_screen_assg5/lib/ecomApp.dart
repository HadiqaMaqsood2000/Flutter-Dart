
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

class ecomApp extends StatefulWidget {
  @override
  _ecomAppState createState() => _ecomAppState();
}

class _ecomAppState extends State<ecomApp> {
  // Carousel Images links list
  final List<String> images = [
    'pic1.jpg',
    'pic2.jpg',
    'pic3.jpg',
    'pic4.jpg',
    'pic5.jpg',
    'pic6.jpg',
    'pic7.jpg',
    'pic8.jpg',
    'pic9.jpg',
    'pic10.jpg'
  ];

  // carousel function
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(ExactAssetImage(imageUrl), context);
      });
    });
    super.initState();
  }
  List<dynamic> gridlist = ['Iphone 12', 'Note 20 Ultra', 'Macbook Air', 'Macbook Pro', 
                            'Gaming PC', 'BacklitKeyboard', 'Mercedes', 'Muton', 'Roadster',
                            'Royal Field'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //child 01 texts
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 10),
                child: Text( "Items",
                             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                width: 200,
              ),
              Text("View More", style: TextStyle(fontSize: 15, color: Colors.purple[600], fontWeight: FontWeight.w500),
              )
            ],
          ),

          //child 02  slider 
              CarouselSlider.builder(
                itemCount: images.length,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.5,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(5), 
                                               color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: 
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(images[index],
                              fit: BoxFit.cover, width: 1000))),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(gridlist[index], 
                                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),)),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 11,),
                              Icon(Icons.star, color: Colors.yellow, size: 11,),
                              Icon(Icons.star, color: Colors.yellow, size: 11,),
                              Icon(Icons.star, color: Colors.yellow, size: 11,),
                              Icon(Icons.star, color: Colors.yellow, size: 11,),
                              SizedBox(width: 5,),
                              Text("5.0 (23 Reviews)", style: TextStyle(fontSize: 11),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
             
          //child 03
          Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text("More Categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),

          //child 04
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 60,
              child: ListView(
                padding: EdgeInsets.only(left: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  //child 01 of listview
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration( color: Colors.white,
                                               borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5,),
                        Icon(
                            Icons.shop,
                            color: Colors.purple,
                          ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                  "Clothes",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w700),
                                ),
                            Text(
                              "5 items",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  //child 02 of listview
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration( color: Colors.white,
                                               borderRadius: BorderRadius.circular(12)),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Icon(Icons.charging_station, color: Colors.purple),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Electronics", style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                          Text("5 items", style: TextStyle(fontSize: 12),)
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),),

                  SizedBox(width: 10),

                  //child 03 of listview
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration( color: Colors.white,
                                               borderRadius: BorderRadius.circular(12)),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Icon(
                        Icons.chair,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Households",style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                          Text("10 items", style: TextStyle(fontSize: 12),)
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),),

                  SizedBox(width: 10),
                  //child 04 of listview
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration( color: Colors.white,
                                               borderRadius: BorderRadius.circular(12)),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Icon(Icons.light, color: Colors.purple,),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Appliances",style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                          Text("25 items",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),),

                  SizedBox(width: 10,),

                  //child 05 of listview
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration( color: Colors.white,
                                               borderRadius: BorderRadius.circular(12)),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 5,),
                      Icon(
                        Icons.double_arrow,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Others",style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                          Text("15 items",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                      SizedBox(width:20),
                    ],
                  ),),
                  SizedBox(width: 10,)
                ],
              ),
            ),
          ),

          //child 05
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Popular Items",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 110),
              Text("View More", style: TextStyle(fontSize: 15, color: Colors.purple[600], fontWeight: FontWeight.w500),
                                textAlign: TextAlign.end,)
            ],
          ),

          //child 06
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
            childAspectRatio: (1.1),
            children: List.generate(10, (index) {
              return Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // column child 01
                    Container(
                      height: 100,
                      width: 180,
                      padding: EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),             
                        child: Image.asset(images[index],fit: BoxFit.fill,)
                        ),
                    ),
                    // column child 02
                    Title(color: Colors.black, child: 
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text( gridlist[index], 
                                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
                    )),
                    // column child 03
                    SizedBox(height: 5),

                    // column child 04
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 11,),
                          Icon(Icons.star, color: Colors.yellow, size: 11,),
                          Icon(Icons.star, color: Colors.yellow, size: 11,),
                          Icon(Icons.star, color: Colors.yellow, size: 11,),
                          Icon(Icons.star, color: Colors.yellow, size: 11,),
                          SizedBox(width: 5,),
                          Text("5.0 (23 Reviews)", style: TextStyle(fontSize: 11),)
                        ],
                      ))
                  ],
                ),
              );
            }),
          ),
          //child 07
          SizedBox(height: 20)
        ],
      ),
    ));
  }
}
