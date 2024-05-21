import 'package:flutter/material.dart';

Widget getBottomNavBar() {
  return BottomAppBar(
    shape: const AutomaticNotchedShape(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      StadiumBorder(side: BorderSide.none),
    ),
    notchMargin: 3,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.wallet_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.money_off),
        ),
      ],
    ),
  );
}
