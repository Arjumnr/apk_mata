import 'package:apk_mata/View/Admin/Navigation/admin_nav_home.dart';
import 'package:apk_mata/View/Admin/Navigation/admin_nav_notification.dart';
import 'package:apk_mata/View/Admin/Navigation/admin_nav_profile.dart';
import 'package:apk_mata/globals.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class AdminBottomNavigation extends StatefulWidget {
  const AdminBottomNavigation({Key? key}) : super(key: key);

  @override
  State<AdminBottomNavigation> createState() => _AdminBottomNavigationState();
}

class _AdminBottomNavigationState extends State<AdminBottomNavigation> {
  int _currentIndex = 0;
  List _widgetOptions = [
    NavHomeAdmin(),
    NavNotificationAdmin(),
    NavProfileAdmin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: background,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
            activeColor: background,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: background,
          ),
        ],
      ),
    );
  }
}
