import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainWrapper extends StatefulWidget {
  final Widget child;
  const MainWrapper({super.key, required this.child});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  // تابعی برای به دست آوردن ایندکس فعلی بر اساس مسیر
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).namedLocation('s');
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/transactions')) {
      return 1;
    }
    if (location.startsWith('/stats')) {
      return 2;
    }
    if (location.startsWith('/settings')) {
      return 3;
    }
    return 0;
  }

  // تابعی برای جابجایی بین صفحات با GoRouter
  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home');
        break;
      case 1:
        GoRouter.of(context).go('/transactions');
        break;
      case 2:
        GoRouter.of(context).go('/stats');
        break;
      case 3:
        GoRouter.of(context).go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child, // محتوای صفحه فعلی در اینجا نمایش داده می‌شود
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'خانه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'تراکنش‌ها',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'آمار',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'تنظیمات',
          ),
        ],
        // برای اینکه آیتم‌ها همیشه نمایش داده شوند
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
