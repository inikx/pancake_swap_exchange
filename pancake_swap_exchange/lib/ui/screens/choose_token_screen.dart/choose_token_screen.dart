import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/ui/screens/choose_token_screen.dart/token_chip.dart';

class ChooseTokenScreen extends StatelessWidget {
  final bool isTokenA;
  final List<Token> tokenList;

  const ChooseTokenScreen({
    super.key,
    required this.isTokenA,
    required this.tokenList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isTokenA ? 'Token A' : 'Token B')),
      body: ListView.builder(
        itemCount: tokenList.length,
        itemBuilder: (context, index) {
          return TokenChip(
            token: tokenList[index],
            tokenList: tokenList,
            isTokenA: isTokenA,
          );
        },
      ),
    );
  }
}
