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
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          Text(''),
          TextButton(onPressed: () {}, child: Text('create')),
          TextButton(onPressed: () {}, child: Text('read')),
          TextButton(onPressed: () {}, child: Text('update')),
          TextButton(onPressed: () {}, child: Text('delete')),
        ],
      )),
    );
  }
}
