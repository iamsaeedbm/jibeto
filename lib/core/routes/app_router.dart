import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jibeto_app/core/routes/shell_routes.dart';
import 'package:jibeto_app/core/routes/routes_address.dart';
import 'package:jibeto_app/features/presentation/widgets/custom_nav_bar.dart';

class AppRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
      initialLocation: RoutesAddress.homeUrl,
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
                      context.goNamed(RoutesAddress.homeName);
                    },
                    child: Text('Back to Home'))
              ],
            ),
          ),
        );
      },

      ///------///

      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return CustomNavBar(navigationShell: navigationShell);
            },
            branches: shellRoutes.map((routes) {
              return StatefulShellBranch(routes: [routes]);
            }).toList())
      ]);
}
