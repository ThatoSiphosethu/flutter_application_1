// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/cart_page.dart';
import 'package:flutter_application_1/pages/home/favorite_page.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
 //users
  final user = FirebaseAuth.instance.currentUser!;

  int _selectedIndex = 0;

 // _pages
  final List <Widget> _pages = [
    HomePage(),
    FavoritePage(),
    CartPage(),
  ];

   void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: MaterialButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          color: Colors.orangeAccent,
          child: Text('sign out'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Icon(
                Icons.person,
              ))
        ],
      ),
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ]),
    );
  }
}
