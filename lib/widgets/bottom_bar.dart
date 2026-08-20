import 'package:flutter/material.dart';

class NavBarBottom extends StatelessWidget {
  const NavBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits_sharp),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
