import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/widgets/navigation_bar/navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.menu)),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
