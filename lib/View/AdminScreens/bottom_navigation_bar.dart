import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';

import 'Booking.dart';
import 'HISTORY.dart';
import 'Home.dart';
import 'Menu.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
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
              ? const Home()
              : _selectedIndex == 1
                  ? const AdminHistory()
                  : _selectedIndex == 2
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
            title: const Text('Schedule'),
            activeColor: primaryColor,
            inactiveColor: Colors.grey,
            activeIconColor: primaryColor,
            activeTitleColor: primaryColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.history),
            title: const Text('History'),
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
