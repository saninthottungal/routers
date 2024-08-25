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
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(context, index),
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

  int _calculateSelectedIndex(BuildContext context) {
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

  void _onItemTapped(BuildContext context, int index) {
    if (index == 0) {
      GoRouter.of(context).go('/home');
    } else if (index == 1) {
      GoRouter.of(context).go('/profile');
    } else if (index == 2) {
      GoRouter.of(context).go('/settings');
    } else if (index == 3) {
      GoRouter.of(context).go('/about');
    }
  }
}
