import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/features/presentation/pages/ai_page.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/main_wrapper.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';

// کلیدهای سراسری برای نگه‌داشتن state صفحات
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    // این یک ShellRoute است که BottomNavigationBar را می‌سازد
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        // MainWrapper ویجتی است که شامل Scaffold و BottomNavBar است
        // child همان صفحه‌ای است که باید نمایش داده شود
        return MainWrapper(child: child);
      },
      routes: [
        // مسیر صفحه اصلی
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        // مسیر صفحه تراکنش‌ها
        GoRoute(
          path: '/transactions',
          builder: (context, state) => const BankSmsPage(),
        ),
        // مسیر صفحه آمار
        GoRoute(
          path: '/stats',
          builder: (context, state) => const AiPage(),
        ),
        // مسیر صفحه تنظیمات
        GoRoute(
          path: '/settings',
          builder: (context, state) => const TransactionsPage(),
        ),
      ],
    ),
  ],
);
