// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pulus/data/app_color.dart';
import 'package:pulus/features/home/screen/home_view.dart';
import 'package:pulus/features/order/screen/order_view.dart';
import 'package:pulus/features/settings/screen/settings_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _list = [HomeView(), OrderView(), SettingsView()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: _list[_currentIndex],
      bottomNavigationBar: Container(
        height: Height * 0.09,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 50)
        ]),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: AppColor.newGrey,
          unselectedLabelStyle: TextStyle(color: AppColor.newGrey),
          selectedItemColor: AppColor.primaryColor,
          selectedLabelStyle: TextStyle(color: AppColor.primaryColor),
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  size: 27,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: 'Profile')
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
