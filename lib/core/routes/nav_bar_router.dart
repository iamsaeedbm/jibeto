import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/features/presentation/pages/ai_page.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';
import 'package:jibeto_app/features/presentation/widgets/custom_nav_bar.dart';

class NavBarRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
      initialLocation: '/home',
      navigatorKey: _navigatorKey,
      errorBuilder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${state.error}'),
                ElevatedButton(
                    onPressed: () {
                      context.go('/home');
                    },
                    child: Text('Back to Home'))
              ],
            ),
          ),
        );
      },
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return CustomNavBar(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/home',
                  builder: (context, state) => HomePage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/transactions',
                  builder: (context, state) => TransactionsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/banksms',
                  builder: (context, state) => BankSmsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/ai',
                  builder: (context, state) => AiPage(),
                )
              ]),
            ])
      ]);
}
