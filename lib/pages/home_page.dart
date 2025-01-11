import 'package:brebeuf_hx/components/bottom_navigation_bar.dart';
import 'package:brebeuf_hx/pages/mission_page.dart';
import 'package:brebeuf_hx/pages/profile_display.dart';
import 'package:brebeuf_hx/pages/ressources.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MissionPage(),
    MyDropdownButton(),
    const ProfilePage(),
    // ADD OTHER PAGES HERE
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => _navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex]
    );
  }
}
