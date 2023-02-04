import 'package:pancake_swap_exchange/bloc/choose_token/choose_token_bloc.dart';

abstract class Injector {
  static final chooseTokenABloc = ChooseTokenBloc();
  static final chooseTokenBBloc = ChooseTokenBloc();
}
