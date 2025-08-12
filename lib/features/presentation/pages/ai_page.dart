import 'package:flutter/material.dart';
import 'package:jibeto_app/features/presentation/widgets/nav_bar.dart';

class AiPage extends StatelessWidget {
  const AiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(selectedIndex: 2),
      body: SafeArea(child: Text('AiPage')),
    );
  }
}
