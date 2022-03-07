import 'package:flutter/material.dart';
import 'package:scratch/screen/recipe/home/home_screen.dart';
import 'package:scratch/screen/recipe/profile/profile_screen.dart';
import 'package:scratch/screen/recipe/search/search_screen.dart';
import 'package:scratch/theme/custom_color.dart';

class AppEntryScreen extends StatefulWidget {
  const AppEntryScreen({Key? key}) : super(key: key);

  @override
  State<AppEntryScreen> createState() => _AppEntryScreenState();
}

class _AppEntryScreenState extends State<AppEntryScreen> {
  int _currentPageIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.amp_stories_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.breakfast_dining_outlined),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentPageIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColor.primaryColor,
        unselectedItemColor: CustomColor.logoColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: _navBarItems,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 1,
      ),
    );
  }
}
