import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/core/theme/theme_class.dart';
import 'package:pancake_swap_exchange/ui/screens/pair_screen.dart';

void main() {
  runApp(const PancakeSwapExchangeApp());
}

class PancakeSwapExchangeApp extends StatelessWidget {
  const PancakeSwapExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PancakeSwapExchange',
      home: const PairScreen(),
      theme: AppTheme.appDarkTheme,
    );
  }
}
