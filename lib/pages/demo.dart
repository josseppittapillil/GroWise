import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation_plus/fancy_bottom_navigation_plus.dart';
import 'market.dart'; // Import the Market class from market.dart
//import 'search.dart'; // Import the Search class from search.dart
//import 'cart.dart'; // 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

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Market(), // Market page
    const Search(), // Search page
    const Cart(), // Cart page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: FancyBottomNavigationPlus(
        circleColor: Colors.green,
        barBackgroundColor: Colors.white,
        initialSelection: _selectedIndex,
        tabs: [
          TabData(
              icon: const Icon(Icons.shopping_bag_rounded), title: "Market"),
          TabData(icon: const Icon(Icons.search), title: "Search"),
          TabData(
              icon: const Icon(Icons.shopping_cart_checkout), title: "Cart"),
        ],
        onTabChangedListener: _onItemTapped,
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2, // Add a black shadow
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.black), // Set app bar text color
        ),
      ),
      body: const Center(
        child: Text('Search Page Content'),
      ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2, // Add a black shadow
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black), // Set app bar text color
        ),
      ),
      body: const Center(
        child: Text('Cart Page Content'),
      ),
    );
  }
}
