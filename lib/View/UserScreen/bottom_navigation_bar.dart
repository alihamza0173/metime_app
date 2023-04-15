
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';
import 'package:metime/View/AdminScreens/Menu.dart';

import '../AdminScreens/HISTORY.dart';
import 'CategoriesServices.dart';
import 'UserHome.dart';

class UserBottomNavigationBarScreen extends StatefulWidget {
  const UserBottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<UserBottomNavigationBarScreen> createState() => _UserBottomNavigationBarScreenState();
}

class _UserBottomNavigationBarScreenState extends State<UserBottomNavigationBarScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: _selectedIndex == 3
          ? const Menu()
          : _selectedIndex == 0
              ? const UserHomeScreen()
              : _selectedIndex == 1
                  ? const CategoriesServices():
      _selectedIndex == 2
          ? const History()
                  : Container(),
      bottomNavigationBar: BottomBar(
        items: [
          BottomBarItem(
            icon: const Icon(CupertinoIcons.square_grid_2x2_fill),
            title: const Text('home'),
            activeColor: primaryColor,
            inactiveColor: Colors.grey,
            activeIconColor: primaryColor,
            activeTitleColor: primaryColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.event),
            title: const Text('Booking'),
            activeColor: primaryColor,
            inactiveColor: Colors.grey,
            activeIconColor: primaryColor,
            activeTitleColor: primaryColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            activeColor: primaryColor,
            inactiveColor: Colors.grey,
            activeIconColor: primaryColor,
            activeTitleColor: primaryColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.menu),
            title: const Text('Menu'),
            activeColor: primaryColor,
            inactiveColor: Colors.grey,
            activeIconColor: primaryColor,
            activeTitleColor: primaryColor,
          ),
        ],
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        backgroundColor: whiteColor,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
