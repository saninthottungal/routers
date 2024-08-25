import 'package:go_router/go_router.dart';
import 'package:routes/main.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    ),
  ],
);
