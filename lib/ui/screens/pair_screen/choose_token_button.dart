import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancake_swap_exchange/bloc/choose_token/choose_token_bloc.dart';
import 'package:pancake_swap_exchange/core/di/injector.dart';
import 'package:pancake_swap_exchange/core/navigation/app_navigation.dart';
import 'package:pancake_swap_exchange/core/navigation/app_router.gr.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/ui/widgets/app_elevated_button.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';
import 'package:pancake_swap_exchange/utils/constants/tokens.dart';

class ChooseTokenButton extends StatelessWidget {
  final bool isTokenA;
  final Token? selectedToken;
  const ChooseTokenButton({
    super.key,
    required this.isTokenA,
    this.selectedToken,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseTokenBloc, ChooseTokenState>(
      bloc: isTokenA ? Injector.chooseTokenABloc : Injector.chooseTokenBBloc,
      builder: (context, state) {
        return state.maybeWhen(
          tokenChoosen: (token, tokenList) {
            return AppElevatedButton(
              onPressed: () {
                AppNavigation.router.push(
                  ChooseTokenScreenRoute(
                    isTokenA: isTokenA,
                    tokenList: tokenList,
                  ),
                );
              },
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(token.imagePath),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    token.name,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            );
          },
          orElse: () {
            return AppElevatedButton(
              onPressed: () {
                AppNavigation.router.push(
                  ChooseTokenScreenRoute(
                    isTokenA: isTokenA,
                    tokenList: isTokenA ? Tokens.tokenAList : Tokens.tokenBList,
                  ),
                );
              },
              backgroundColor: AppColors.darkBlue,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.white,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    isTokenA ? 'Token A' : 'Token B',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
