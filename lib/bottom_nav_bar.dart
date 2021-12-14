// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:session_6/screens/basket/basketScreen.dart';
import 'package:session_6/screens/home/homeScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: changePage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home").tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("basket").tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            title: Text("card").tr(),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("favourite").tr()
          ),
        ],

        onTap: (i){
          _currentIndex = i;
          setState(() {});
        },
      ),
    );
  }

  Widget changePage(int current){
    switch(current){
      case 0 :
        return HomeScreen();
      case 1 :
        return BasketScreen();
      case 2 :
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
        );
      default:
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
        );
    }
  }
}
