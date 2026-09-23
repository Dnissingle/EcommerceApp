import 'package:flutter/material.dart';

import '../components/Item_tile.dart';
import '../models/item.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search', style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Shop as your heart desires!",
            style: TextStyle(color: Colors.grey[500], fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        //Hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a item
              Item item = Item(
                name: 'Item name',
                description: 'Item description',
                imageUrl: 'lib/images/logo.webp',
                price: '10',
              );
              return ItemTile(
                item: item,
              );
            },
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 25),
        child: Divider(
          color: Colors.black,
        ),)
      ],
    );
  }
}
