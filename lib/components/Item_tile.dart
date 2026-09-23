import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemTile extends StatelessWidget {
  Item item;

  ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //item image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(item.imageUrl),
            ),

            //description
            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(item.description, style: TextStyle(color: Colors.black)),

            //price + details
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      //item name
                      //Text(item.name, style: TextStyle(color: Colors.grey)),
                      Text("Price:"),
                      //item price
                      Text(item.price, style: TextStyle(color: Colors.black)),
                    ],
                  ),

                  //button to add to cart
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
