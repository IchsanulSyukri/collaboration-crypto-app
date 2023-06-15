import 'package:collaboration_crypto_app/pages/home_page.dart';
import 'package:collaboration_crypto_app/pages/time_circle_page.dart';
import 'package:collaboration_crypto_app/pages/exchange_page.dart';
import 'package:collaboration_crypto_app/pages/profile_page.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

enum _SelectedTab { home, compass, order, user }

// ignore: camel_case_types
class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

// ignore: camel_case_types
class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: const [
            // HomePage(),
            // ExhchangePage(),
            // TimeCircles(),
            // Profile(),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: const Color(0xffEF9F27),
        backgroundColor: const Color(0xffF5F6FA),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "assets/homewarna.png"
                  : "assets/home.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.compass
                  ? "assets/menu warna.png"
                  : "assets/menu.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.order
                  ? "assets/time circle warna.png"
                  : "assets/Time Circle.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.user
                  ? "assets/profilwarna.png"
                  : "assets/Profile.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
