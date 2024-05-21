import 'package:flutter/material.dart';
import 'package:jibeto_app/theme/nav_bar.dart';
import 'package:jibeto_app/theme/fab_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // fab button
      floatingActionButton: getFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottom nav bar
      bottomNavigationBar: getBottomNavBar(),
      // main body
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
