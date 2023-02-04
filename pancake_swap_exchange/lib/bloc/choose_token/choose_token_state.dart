part of 'choose_token_bloc.dart';

@freezed
class ChooseTokenState with _$ChooseTokenState {
  const factory ChooseTokenState.initial() = _Initial;
  const factory ChooseTokenState.tokenChoosen({
    required Token token,
    required List<Token> tokenList,
  }) = _TokenChoosen;
  const factory ChooseTokenState.tokensChoosen({
    required Token tokenA,
    required Token tokenB,
  }) = _TokensChoosen;
}
