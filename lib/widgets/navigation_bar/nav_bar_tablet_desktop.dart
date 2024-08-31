import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/widgets/navigation_bar/nav_bar_item.dart';
import 'package:responsive_design_assignment/widgets/navigation_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(title: 'Episodes'),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'About'),
            ],
          )
        ],
      ),
    );
  }
}
