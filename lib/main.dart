import 'package:flutter/material.dart';
import 'package:jibeto_app/core/routes/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'jibeto',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
