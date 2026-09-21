import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selecteddindex = 0;

  // this method will update our selected index when the
  //  user taps on the bottom nav bar items
  void navigateBottomBar(int index) {
    setState(() {
      _selecteddindex = index;
    });
  }

  // pages to display
  List<Widget> pages = [
    // shop pages
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            //logo
            DrawerHeader(child: Image.asset('lib/images/logo.webp')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.black),
            ),

            //Other pages
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.black),
                    title: Text('Home'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.black,
                    ),
                    title: Text('Shop'),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.black),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      body: pages[_selecteddindex],
    );
  }
}
