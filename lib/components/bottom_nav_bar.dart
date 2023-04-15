import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        haptic: true,
        gap: 8.0,
        tabBorderRadius: 16,
        tabActiveBorder: Border.all(color: Colors.white),
        color: Colors.grey[400],
        activeColor: Colors.grey.shade900,
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home_rounded,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}