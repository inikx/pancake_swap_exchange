import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/bloc/choose_token/choose_token_bloc.dart';
import 'package:pancake_swap_exchange/core/di/injector.dart';
import 'package:pancake_swap_exchange/core/navigation/app_navigation.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';

class TokenChip extends StatefulWidget {
  final Token token;
  final List<Token> tokenList;
  final bool isTokenA;
  const TokenChip({
    super.key,
    required this.token,
    required this.isTokenA,
    required this.tokenList,
  });

  @override
  State<TokenChip> createState() => _TokenChipState();
}

class _TokenChipState extends State<TokenChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: RawChip(
        showCheckmark: false,
        side: BorderSide.none,
        selectedColor: AppColors.purple,
        backgroundColor: AppColors.darkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        avatar:
            CircleAvatar(backgroundImage: AssetImage(widget.token.imagePath)),
        label: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.token.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  widget.token.description,
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            )
          ],
        ),
        selected: widget.token.selected,
        onSelected: (value) {
          widget.isTokenA
              ? Injector.chooseTokenABloc.add(
                  ChooseTokenEvent.chooseToken(
                    token: widget.token,
                    tokenList: widget.tokenList,
                  ),
                )
              : Injector.chooseTokenBBloc.add(
                  ChooseTokenEvent.chooseToken(
                    token: widget.token,
                    tokenList: widget.tokenList,
                  ),
                );
          AppNavigation.router.pop();
        },
      ),
    );
  }
}

/*
Padding(
      padding: const EdgeInsets.all(15.0),
      child: ChoiceChip(
        // selectedColor: Colors.black,
        disabledColor: Colors.black,
        backgroundColor: Colors.black,
        avatar: ,
        label: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(token.imagePath)),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(token.name), Text(token.description)],
            )
          ],
        ),
        selected: false,
      ),
    )
*/
