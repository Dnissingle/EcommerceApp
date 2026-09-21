import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.blue,
        tabBackgroundColor: Colors.grey.shade300,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const[
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        ),
      ]),
    );
  }
}

