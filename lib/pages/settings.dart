import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        GoRouter.of(context).go('/home');
      },
      child: const Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
