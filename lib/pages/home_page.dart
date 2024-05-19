import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'incerement',
        elevation: 10,
        child: Icon(Icons.add),
        shape: const CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: Center(),
      ),
    );
  }
}
