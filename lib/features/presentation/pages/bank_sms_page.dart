import 'package:flutter/material.dart';
import 'package:jibeto_app/features/presentation/widgets/nav_bar.dart';

class BankSmsPage extends StatelessWidget {
  const BankSmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(selectedIndex: 1),
      body: SafeArea(child: Text('BankSmsPage')),
    );
  }
}
