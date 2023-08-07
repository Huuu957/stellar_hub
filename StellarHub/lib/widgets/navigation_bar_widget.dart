import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stellarhub/constants.dart';
import 'package:stellarhub/screens/home_screen.dart';

import 'circular_icon_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  static const String navigationBarWidget = '/navigationBar';

  const NavigationBarWidget({super.key});

  @override
  NavigationBarWidgetState createState() => NavigationBarWidgetState();
}

class NavigationBarWidgetState extends State<NavigationBarWidget> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_outlined,
              color: kSecondaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/newspaper.png',
              width: 24.w,
              height: 24.h,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/newspaper.png',
              width: 24.w,
              height: 24.h,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircularIconWidget(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/newspaper.png',
              width: 24.w,
              height: 24.h,
            ),
            label: '',
          ),
        ],
        currentIndex: currentPageIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
