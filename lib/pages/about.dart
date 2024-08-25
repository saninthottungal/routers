import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        GoRouter.of(context).go('/home');
      },
      canPop: false,
      child: const Center(
        child: Text("About Page"),
      ),
    );
  }
}
