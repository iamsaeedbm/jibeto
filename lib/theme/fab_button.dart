import 'package:flutter/material.dart';

Widget getFab() {
  return FloatingActionButton(
    onPressed: () {},
    tooltip: 'incerement',
    elevation: 10,
    shape: const CircleBorder(),
    child: const Icon(Icons.add_rounded),
  );
}
