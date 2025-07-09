import 'package:flutter/material.dart';
import 'package:jibeto_app/component/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
          child: Column(
        children: [
          Text('data'),
        ],
      )),
    );
  }
}
