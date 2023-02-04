import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/core/navigation/app_navigation.dart';
import 'package:pancake_swap_exchange/core/theme/theme_class.dart';

void main() {
  runApp(const PancakeSwapExchangeApp());
}

class PancakeSwapExchangeApp extends StatelessWidget {
  const PancakeSwapExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Token Exchange Rate Example',
      debugShowCheckedModeBanner: false,
      routerDelegate: AppNavigation.router.delegate(), //разобраться зачем
      routeInformationParser: AppNavigation.router.defaultRouteParser(),
      theme: AppTheme.appDarkTheme,
    );
  }
}
