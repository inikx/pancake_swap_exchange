import 'package:flutter/material.dart';

void main() {
  runApp(const PancakeSwapExchangeApp());
}

class PancakeSwapExchangeApp extends StatelessWidget {
  const PancakeSwapExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pancake Swap Exchange',
    );
  }
}
