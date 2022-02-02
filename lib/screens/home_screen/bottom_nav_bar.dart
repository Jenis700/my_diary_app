import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      activeIndex: 2,
      height: 70,
      backgroundColor: Colors.white,
      iconSize: 30,
      inactiveColor: Colors.black,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      splashSpeedInMilliseconds: 1,
      leftCornerRadius: 30,
      rightCornerRadius: 30,
      elevation: 20,
      icons: [
        Icons.account_balance_wallet_rounded,
        Icons.snowshoeing_sharp,
        Icons.fastfood,
        Icons.account_circle,
      ],
      onTap: (value) {},
    );
  }
}
