import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routes/pages/about.dart';
import 'package:routes/pages/bottom_nav_page.dart';
import 'package:routes/pages/home.dart';
import 'package:routes/pages/profile.dart';
import 'package:routes/pages/settings.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) => const MaterialPage(
                child: HomePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const MaterialPage(
                child: ProfilePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) => const MaterialPage(
                child: SettingsPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/about',
              pageBuilder: (context, state) => const MaterialPage(
                child: AboutPage(),
              ),
            ),
          ],
        ),
      ],
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return BottomNavBarPage(navigationShell: navigationShell);
      },
    ),
  ],
);
