import 'package:flutter/material.dart';

import 'CartAppBar.dart';
import 'CartBottomNavBar.dart';
import 'CartItemSamples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            //Temproray heigt
            height: 700,
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(children: [
              CartItemSamples(),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53C5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Add Cupon Code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53C5),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
