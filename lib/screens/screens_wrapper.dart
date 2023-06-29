import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/home_screen.dart';
import 'package:lithabit/screens/market/market_screen.dart';
import 'package:lithabit/screens/profile/profile_screen.dart';

class ScreensWrapper extends StatefulWidget {
  const ScreensWrapper({Key? key}) : super(key: key);

  @override
  _ScreensWrapperState createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const MarketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_outlined),
            label: 'Book Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
