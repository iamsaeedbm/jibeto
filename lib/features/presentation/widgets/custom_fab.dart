import 'package:flutter/material.dart';

class CustomFab extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFab({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // استفاده از SizedBox برای کنترل بهتر اندازه و موقعیت
    return SizedBox(
      height: 65.0,
      width: 65.0,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: onPressed,
          backgroundColor:
              Theme.of(context).colorScheme.primary, // رنگ اصلی برنامه
          shape: const CircleBorder(), // شکل کاملا دایره‌ای
          elevation: 4.0,
          child: Icon(
            Icons.add,
            color: Theme.of(context)
                .colorScheme
                .onPrimary, // رنگ آیکون بر اساس رنگ اصلی
          ),
        ),
      ),
    );
  }
}
