import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/home_screen.dart';
import 'package:travel_app/profile_screen.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedTab = 0;

  List<Widget> tabsOptions = [
    HomeScreen(),
    Center(
      child: Icon(
        Icons.settings,
        color: Colors.black,
        size: 100,
      ),
    ),
    Center(
      child: Icon(
        Icons.settings,
        color: Colors.black,
        size: 100,
      ),
    ),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_rounded), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'Profile'),
          ],
          currentIndex: selectedTab,
          onTap: (value) {
            setState(() {
              selectedTab = value;
            });
          },
        ),
        body: tabsOptions.elementAt(selectedTab));
  }
}
