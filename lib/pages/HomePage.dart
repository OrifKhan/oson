import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CotegorisWiget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemWeget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              //Search Widet
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Saerch here..."),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        color: Color(0xFF4C53A5),
                        size: 27,
                      )
                    ],
                  ),
                ),
                //Categoris
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                //categoris widget
                CotegorisWiget(),
                //Item
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Best Selling',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                ItemWeget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (value) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
