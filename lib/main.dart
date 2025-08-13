import 'package:flutter/material.dart';
import 'package:jibeto_app/core/routes/nav_bar_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'jibeto',
      debugShowCheckedModeBanner: true,
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
