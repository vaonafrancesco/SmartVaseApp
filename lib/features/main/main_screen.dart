import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smartvase/features/alarm/alarm_listener.dart';

/// Main screen with bottom navigation bar
class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AlarmListener(
      child: Scaffold(
        body: child,
        bottomNavigationBar: NavigationBar(
        selectedIndex: _getSelectedIndex(context),
        onDestinationSelected: (index) {
          if (index == 0) {
            context.go('/dashboard');
          } else if (index == 1) {
            context.go('/vision');
          } else if (index == 2) {
            context.go('/settings');
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.visibility),
            label: 'Vision',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location == '/dashboard') return 0;
    if (location == '/vision') return 1;
    if (location == '/settings') return 2;
    return 0;
  }
}
