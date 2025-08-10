import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigator = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
      initialLocation: '/home', navigatorKey: _rootNavigator, routes: []);
}
