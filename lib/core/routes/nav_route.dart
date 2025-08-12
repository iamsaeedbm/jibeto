import 'package:go_router/go_router.dart';
import 'package:jibeto_app/features/presentation/pages/ai_page.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/expenses',
      builder: (context, state) => const TransactionsPage(),
    ),
    GoRoute(
      path: '/stats',
      builder: (context, state) => const AiPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const BankSmsPage(),
    ),
  ],
);
