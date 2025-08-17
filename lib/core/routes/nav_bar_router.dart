import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/core/routes/app_routes.dart';
import 'package:jibeto_app/features/presentation/pages/piggy_bank_page.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';
import 'package:jibeto_app/features/presentation/widgets/custom_nav_bar.dart';

class NavBarRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
      initialLocation: AppRoutes.homeUrl,
      navigatorKey: _navigatorKey,

      ///--- go router error handle---///
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
                      context.goNamed(AppRoutes.homeName);
                    },
                    child: Text('Back to Home'))
              ],
            ),
          ),
        );
      },

      ///------///
      ///
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return CustomNavBar(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AppRoutes.piggyBankUrl,
                  name: AppRoutes.piggyBankName,
                  builder: (context, state) => const PiggyBankPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AppRoutes.bankSmsUrl,
                  name: AppRoutes.bankSmsName,
                  builder: (context, state) => const BankSmsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AppRoutes.transactionsUrl,
                  name: AppRoutes.transactionsName,
                  builder: (context, state) => const TransactionsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AppRoutes.homeUrl,
                  name: AppRoutes.homeName,
                  builder: (context, state) => const HomePage(),
                )
              ]),
            ])
      ]);
}
