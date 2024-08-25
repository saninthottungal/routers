import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routes/pages/about.dart';
import 'package:routes/pages/bottom_nav_page.dart';
import 'package:routes/pages/home.dart';
import 'package:routes/pages/profile.dart';
import 'package:routes/pages/settings.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomePage(),
          ),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => const MaterialPage(
            child: ProfilePage(),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => const MaterialPage(
            child: SettingsPage(),
          ),
        ),
        GoRoute(
          path: '/about',
          pageBuilder: (context, state) => const MaterialPage(
            child: AboutPage(),
          ),
        ),
      ],
      builder: (context, state, child) {
        return BottomNavBarPage(child: child);
      },
    ),
  ],
);
