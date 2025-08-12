import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  final int selectedIndex;

  const AppNavigationBar({
    super.key,
    required this.selectedIndex,
  });

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/expenses');
        break;
      case 2:
        context.go('/stats');
        break;
      case 3:
        context.go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) => _onItemTapped(context, index),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'خانه'),
        NavigationDestination(icon: Icon(Icons.list), label: 'مخارج'),
        NavigationDestination(icon: Icon(Icons.bar_chart), label: 'آمار'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'تنظیمات'),
      ],
    );
  }
}
