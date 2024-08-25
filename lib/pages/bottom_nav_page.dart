import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: calculateSelectedIndex(context),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error),
            label: 'About',
          )
        ],
      ),
    );
  }

  int calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/home')) {
      return 0;
    } else if (location.startsWith('/profile')) {
      return 1;
    } else if (location.startsWith('/settings')) {
      return 2;
    } else if (location.startsWith('/about')) {
      return 3;
    } else {
      return 0;
    }
  }
}
