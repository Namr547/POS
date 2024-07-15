// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pos/Screens/dashboard_page.dart';
import 'package:pos/Screens/favorite_page.dart';
import 'package:pos/Screens/cart_page.dart';
import 'package:pos/Screens/category_page.dart';
import 'package:pos/Screens/settings_page.dart';

class HomePage extends StatefulWidget {
  int newindex;
  HomePage({super.key, this.newindex = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    CategoryPage(), // Example: CategoryPage
    CartPage(), // Example: CartPage
    FavouritePage(), // Example: FavoritePage
    SettingsPage() // Example: SettingsPage
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.newindex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Color.fromRGBO(17, 12, 49, 1),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        animationDuration: Duration(milliseconds: 300),
        height: 50,
        items: [
          Icon(Icons.home),
          Icon(Icons.category),
          Icon(Icons.shopping_basket),
          Icon(Icons.favorite),
          Icon(Icons.settings)
        ],
      ),
    );
  }
}
