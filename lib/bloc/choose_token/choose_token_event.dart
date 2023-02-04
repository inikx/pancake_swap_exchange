part of 'choose_token_bloc.dart';

@freezed
class ChooseTokenEvent with _$ChooseTokenEvent {
  const factory ChooseTokenEvent.chooseToken({
    required Token token,
    required List<Token> tokenList,
  }) = _ChooseTokenEvent;
}
