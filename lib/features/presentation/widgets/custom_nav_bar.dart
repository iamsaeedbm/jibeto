import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: navigationShell.goBranch,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.account_balance), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.swap_vert), label: 'Transactions'),
            NavigationDestination(
                icon: Icon(Icons.mail_outlined), label: 'Bank SMS'),
            NavigationDestination(
                icon: Icon(Icons.savings_outlined), label: 'Ai'),
          ]),
    );
  }
}
