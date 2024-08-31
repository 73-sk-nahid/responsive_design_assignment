import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
        color: const Color.fromARGB(255, 31, 229, 146),
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'SKILL UP NOW',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
          ),
          Text('TAP HERE',
          style: TextStyle(
            color: Colors.white,
          ),)
        ],
      ),
    );
  }
}
