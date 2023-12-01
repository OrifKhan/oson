import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$120',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53C5),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.cart_badge_plus,
                  ),
                  Text(
                    'Add To Cart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
