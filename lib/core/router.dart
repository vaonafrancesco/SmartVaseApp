import 'package:go_router/go_router.dart';
import 'package:smartvase/features/dashboard/dashboard_screen.dart';
import 'package:smartvase/features/settings/settings_screen.dart';
import 'package:smartvase/features/vision/vision_screen.dart';
import 'package:smartvase/features/main/main_screen.dart';

/// App router configuration
final router = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScreen(child: child),
      routes: [
        GoRoute(
          path: '/dashboard',
          name: 'dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/vision',
          name: 'vision',
          builder: (context, state) => const VisionScreen(),
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
