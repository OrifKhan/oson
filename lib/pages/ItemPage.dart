import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import 'ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              '1.png',
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Product titel',
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0XFF4C53C5),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            maxRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, index) => Icon(
                              Icons.favorite,
                              color: Color(0xFF4C53C5),
                            ),
                            onRatingUpdate: (value) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  '01',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0XFF4C53C5),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Text(
                        'This is more detailed description of the product. you can write heremore about  the pridust. this is lengthy descreption',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF4C53C5),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            'Size:',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53C5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$i',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4C53C5),
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            'Color:',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53C5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < Clrs.length; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
