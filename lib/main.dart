import 'package:flutter/material.dart';
import 'package:jibeto_app/core/routes/nav_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'مدیریت مالی',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Vazir', // اگر فونت فارسی داری
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      routerConfig: appRouter,
      locale: const Locale('fa'),
      supportedLocales: const [
        Locale('fa'), // فارسی
        Locale('en'), // انگلیسی
      ],
    );
  }
}
