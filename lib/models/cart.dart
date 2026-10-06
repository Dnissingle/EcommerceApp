import 'package:ecommerce/models/item.dart';
import 'package:flutter/material.dart';

class Cart with  ChangeNotifier {
  // list of product for sale
  List<Item> items = [
    Item(
      name: 'Item name 1',
      description: 'Item description 1',
      imageUrl: 'lib/images/logo.webp',
      price: '10',
    ),
    Item(
      name: 'Item name 2',
      description: 'Item description 2',
      imageUrl: 'lib/images/logo.webp',
      price: '20',
    ),
    Item(
      name: 'Item name 3',
      description: 'Item description 3',
      imageUrl: 'lib/images/logo.webp',
      price: '30',
    ),
    Item(
      name: 'Item name 4',
      description: 'Item description 4',
      imageUrl: 'lib/images/logo.webp',
      price: '40',
    ),

  ];

  // list of items in user cart
  List<Item> userCart = [];


  // get list of items for sale
  List<Item> getItemList() {
    return items;
  }

  // get list of items in cart
  List<Item> getUserCart() {
    return userCart;
  }

  // add items to the cart
  void addToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }


  // remove item from cart
  void removeFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}
