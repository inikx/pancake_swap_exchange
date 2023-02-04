import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/utils/constants/tokens.dart';

part 'choose_token_state.dart';
part 'choose_token_event.dart';
part 'choose_token_bloc.freezed.dart';

class ChooseTokenBloc extends Bloc<ChooseTokenEvent, ChooseTokenState> {
  ChooseTokenBloc() : super(const ChooseTokenState.initial()) {
    on<_ChooseTokenEvent>((event, emit) {
      for (final e in event.tokenList) {
        e.selected = false;
      }
      event.token.selected = true;

      final list = [...Tokens.tokenAList, ...Tokens.tokenBList]
          .where((e) => e.selected)
          .toList();
      if (list.length == 2) {
        emit(_TokensChoosen(tokenA: list[0], tokenB: list[1]));
      }

      emit(_TokenChoosen(token: event.token, tokenList: event.tokenList));
    });
  }
}
