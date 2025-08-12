import 'package:flutter/material.dart';
import 'package:jibeto_app/features/presentation/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(selectedIndex: 0),
      body: SafeArea(child: Text('HomePage')),
    );
  }
}
