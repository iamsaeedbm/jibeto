import 'package:go_router/go_router.dart';
import 'package:jibeto_app/core/routes/routes_address.dart';
import 'package:jibeto_app/features/presentation/pages/bank_sms_page.dart';
import 'package:jibeto_app/features/presentation/pages/home_page.dart';
import 'package:jibeto_app/features/presentation/pages/piggy_bank_page.dart';
import 'package:jibeto_app/features/presentation/pages/transactions_page.dart';

final List<GoRoute> shellRoutes = [
  GoRoute(
    path: RoutesAddress.homeUrl,
    name: RoutesAddress.homeName,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: RoutesAddress.transactionsUrl,
    name: RoutesAddress.transactionsName,
    builder: (context, state) => const TransactionsPage(),
  ),
  GoRoute(
    path: RoutesAddress.bankSmsUrl,
    name: RoutesAddress.bankSmsName,
    builder: (context, state) => const BankSmsPage(),
  ),
  GoRoute(
    path: RoutesAddress.piggyBankUrl,
    name: RoutesAddress.piggyBankName,
    builder: (context, state) => const PiggyBankPage(),
  ),
];
