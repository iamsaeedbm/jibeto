import 'package:flutter/material.dart';
import 'package:jibeto_app/pages/home_page.dart';
import 'package:jibeto_app/theme/dark_mode.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode,
      home: const HomePage(),
    );
  }
}
