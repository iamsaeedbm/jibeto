import 'package:flutter/material.dart';
import 'package:jibeto_app/features/presentation/widgets/nav_bar.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(selectedIndex: 3),
      body: SafeArea(child: Text('TransactionsPage')),
    );
  }
}
