import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/features/presentation/widgets/custom_fab.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      //--- FAB ---//
      floatingActionButton: CustomFab(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationShell.currentIndex,
          onTap: navigationShell.goBranch,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'خانه'),
            BottomNavigationBarItem(
                icon: Icon(Icons.swap_vert), label: 'تراکنش'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outlined), label: 'پیامک'),
            BottomNavigationBarItem(
                icon: Icon(Icons.savings_outlined), label: 'قلک'),
          ]),
    );
  }
}
