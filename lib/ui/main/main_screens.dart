import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/ui/pages/account_page.dart';
import 'package:grocery_app/ui/pages/cart_page.dart';
import 'package:grocery_app/ui/pages/categories_product_page.dart';
import 'package:grocery_app/ui/pages/favourite_page.dart';
import 'package:grocery_app/ui/pages/shop_page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> pageList = <Widget>[
    ShopPage(),
    CategoriesProductPage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          child,
          primaryAnimation,
          secondaryAnimation,
        ) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
        selectedItemColor: Color.fromRGBO(83, 177, 177, 1),
        unselectedItemColor: Color.fromRGBO(52, 67, 86, 1),
      ),
    );
  }
}
