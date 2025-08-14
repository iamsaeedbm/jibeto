import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/core/routes/address_routes.dart';
import 'package:jibeto_app/features/presentation/pages/ai_page.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';
import 'package:jibeto_app/features/presentation/widgets/custom_nav_bar.dart';

class NavBarRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
      initialLocation: AddressRoutes.homePage,
      navigatorKey: _navigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return CustomNavBar(navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AddressRoutes.homePage,
                  builder: (context, state) => HomePage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AddressRoutes.transactionsPage,
                  builder: (context, state) => TransactionsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AddressRoutes.bankSmsPage,
                  builder: (context, state) => BankSmsPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: AddressRoutes.aiPage,
                  builder: (context, state) => AiPage(),
                )
              ]),
            ])
      ]);
}
