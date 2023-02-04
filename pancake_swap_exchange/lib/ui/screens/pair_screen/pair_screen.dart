import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pancake_swap_exchange/bloc/choose_token/choose_token_bloc.dart';
import 'package:pancake_swap_exchange/core/di/injector.dart';
import 'package:pancake_swap_exchange/core/navigation/app_navigation.dart';
import 'package:pancake_swap_exchange/core/navigation/app_router.gr.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/ui/screens/pair_screen/choose_token_button.dart';
import 'package:pancake_swap_exchange/ui/widgets/app_elevated_button.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';

class PairScreen extends StatefulWidget {
  const PairScreen({super.key});

  @override
  State<PairScreen> createState() => _PairScreenState();
}

Token? selectedTokenA;
Token? selectedTokenB;

class _PairScreenState extends State<PairScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose tokens',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 40),
              ChooseTokenButton(
                isTokenA: true,
                selectedToken: selectedTokenB,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Icon(
                  Icons.arrow_downward_rounded,
                  size: 45,
                ),
              ),
              ChooseTokenButton(
                isTokenA: false,
                selectedToken: selectedTokenA,
              ),
              const SizedBox(height: 40),
              MultiBlocListener(
                listeners: [
                  BlocListener<ChooseTokenBloc, ChooseTokenState>(
                    bloc: Injector.chooseTokenABloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        tokensChoosen: (tokenA, tokenB) {
                          setState(() {
                            selectedTokenA = tokenA;
                            selectedTokenB = tokenB;
                          });
                        },
                        orElse: () {},
                      );
                    },
                  ),
                  BlocListener<ChooseTokenBloc, ChooseTokenState>(
                    bloc: Injector.chooseTokenBBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        tokensChoosen: (tokenA, tokenB) {
                          setState(() {
                            selectedTokenA = tokenA;
                            selectedTokenB = tokenB;
                          });
                        },
                        orElse: () {},
                      );
                    },
                  ),
                ],
                child: Builder(
                  builder: (context) {
                    if (selectedTokenA != null &&
                        selectedTokenB != null &&
                        selectedTokenA!.address != selectedTokenB!.address) {
                      return AppElevatedButton(
                        onPressed: () {
                          AppNavigation.router.push(
                            ExchangeRateScreenRoute(
                              tokenA: selectedTokenA!,
                              tokenB: selectedTokenB!,
                            ),
                          );
                        },
                        child: Text(
                          'Watch',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      );
                    } else {
                      return AppElevatedButton(
                        onPressed: null,
                        child: Text(
                          'Watch',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: AppColors.white.withOpacity(0.15),
                                  ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
