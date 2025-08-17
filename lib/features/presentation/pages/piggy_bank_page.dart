import 'package:flutter/material.dart';

class PiggyBankPage extends StatelessWidget {
  const PiggyBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text('Piggy Bank Page'))),
    );
  }
}
