import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/widgets/navigation_drawer/drawer_item.dart';
import 'package:responsive_design_assignment/widgets/navigation_drawer/nav_drawer_header.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]
      ),
      child: const Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.video_settings_rounded),
          DrawerItem(title: 'About', icon: Icons.announcement_rounded)
        ],
      ),
    );
  }
}
