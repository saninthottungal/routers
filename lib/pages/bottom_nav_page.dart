import 'package:flutter/material.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: child,
      ),
    );
  }
}
