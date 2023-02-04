// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChooseTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Token token, List<Token> tokenList) tokenChoosen,
    required TResult Function(Token tokenA, Token tokenB) tokensChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult? Function(Token tokenA, Token tokenB)? tokensChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult Function(Token tokenA, Token tokenB)? tokensChoosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TokenChoosen value) tokenChoosen,
    required TResult Function(_TokensChoosen value) tokensChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TokenChoosen value)? tokenChoosen,
    TResult? Function(_TokensChoosen value)? tokensChoosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TokenChoosen value)? tokenChoosen,
    TResult Function(_TokensChoosen value)? tokensChoosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseTokenStateCopyWith<$Res> {
  factory $ChooseTokenStateCopyWith(
          ChooseTokenState value, $Res Function(ChooseTokenState) then) =
      _$ChooseTokenStateCopyWithImpl<$Res, ChooseTokenState>;
}

/// @nodoc
class _$ChooseTokenStateCopyWithImpl<$Res, $Val extends ChooseTokenState>
    implements $ChooseTokenStateCopyWith<$Res> {
  _$ChooseTokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChooseTokenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChooseTokenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Token token, List<Token> tokenList) tokenChoosen,
    required TResult Function(Token tokenA, Token tokenB) tokensChoosen,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult? Function(Token tokenA, Token tokenB)? tokensChoosen,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult Function(Token tokenA, Token tokenB)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TokenChoosen value) tokenChoosen,
    required TResult Function(_TokensChoosen value) tokensChoosen,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TokenChoosen value)? tokenChoosen,
    TResult? Function(_TokensChoosen value)? tokensChoosen,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TokenChoosen value)? tokenChoosen,
    TResult Function(_TokensChoosen value)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChooseTokenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_TokenChoosenCopyWith<$Res> {
  factory _$$_TokenChoosenCopyWith(
          _$_TokenChoosen value, $Res Function(_$_TokenChoosen) then) =
      __$$_TokenChoosenCopyWithImpl<$Res>;
  @useResult
  $Res call({Token token, List<Token> tokenList});
}

/// @nodoc
class __$$_TokenChoosenCopyWithImpl<$Res>
    extends _$ChooseTokenStateCopyWithImpl<$Res, _$_TokenChoosen>
    implements _$$_TokenChoosenCopyWith<$Res> {
  __$$_TokenChoosenCopyWithImpl(
      _$_TokenChoosen _value, $Res Function(_$_TokenChoosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenList = null,
  }) {
    return _then(_$_TokenChoosen(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenList: null == tokenList
          ? _value._tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$_TokenChoosen implements _TokenChoosen {
  const _$_TokenChoosen(
      {required this.token, required final List<Token> tokenList})
      : _tokenList = tokenList;

  @override
  final Token token;
  final List<Token> _tokenList;
  @override
  List<Token> get tokenList {
    if (_tokenList is EqualUnmodifiableListView) return _tokenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenList);
  }

  @override
  String toString() {
    return 'ChooseTokenState.tokenChoosen(token: $token, tokenList: $tokenList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenChoosen &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._tokenList, _tokenList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, token, const DeepCollectionEquality().hash(_tokenList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenChoosenCopyWith<_$_TokenChoosen> get copyWith =>
      __$$_TokenChoosenCopyWithImpl<_$_TokenChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Token token, List<Token> tokenList) tokenChoosen,
    required TResult Function(Token tokenA, Token tokenB) tokensChoosen,
  }) {
    return tokenChoosen(token, tokenList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult? Function(Token tokenA, Token tokenB)? tokensChoosen,
  }) {
    return tokenChoosen?.call(token, tokenList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult Function(Token tokenA, Token tokenB)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (tokenChoosen != null) {
      return tokenChoosen(token, tokenList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TokenChoosen value) tokenChoosen,
    required TResult Function(_TokensChoosen value) tokensChoosen,
  }) {
    return tokenChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TokenChoosen value)? tokenChoosen,
    TResult? Function(_TokensChoosen value)? tokensChoosen,
  }) {
    return tokenChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TokenChoosen value)? tokenChoosen,
    TResult Function(_TokensChoosen value)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (tokenChoosen != null) {
      return tokenChoosen(this);
    }
    return orElse();
  }
}

abstract class _TokenChoosen implements ChooseTokenState {
  const factory _TokenChoosen(
      {required final Token token,
      required final List<Token> tokenList}) = _$_TokenChoosen;

  Token get token;
  List<Token> get tokenList;
  @JsonKey(ignore: true)
  _$$_TokenChoosenCopyWith<_$_TokenChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokensChoosenCopyWith<$Res> {
  factory _$$_TokensChoosenCopyWith(
          _$_TokensChoosen value, $Res Function(_$_TokensChoosen) then) =
      __$$_TokensChoosenCopyWithImpl<$Res>;
  @useResult
  $Res call({Token tokenA, Token tokenB});
}

/// @nodoc
class __$$_TokensChoosenCopyWithImpl<$Res>
    extends _$ChooseTokenStateCopyWithImpl<$Res, _$_TokensChoosen>
    implements _$$_TokensChoosenCopyWith<$Res> {
  __$$_TokensChoosenCopyWithImpl(
      _$_TokensChoosen _value, $Res Function(_$_TokensChoosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenA = null,
    Object? tokenB = null,
  }) {
    return _then(_$_TokensChoosen(
      tokenA: null == tokenA
          ? _value.tokenA
          : tokenA // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenB: null == tokenB
          ? _value.tokenB
          : tokenB // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$_TokensChoosen implements _TokensChoosen {
  const _$_TokensChoosen({required this.tokenA, required this.tokenB});

  @override
  final Token tokenA;
  @override
  final Token tokenB;

  @override
  String toString() {
    return 'ChooseTokenState.tokensChoosen(tokenA: $tokenA, tokenB: $tokenB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokensChoosen &&
            (identical(other.tokenA, tokenA) || other.tokenA == tokenA) &&
            (identical(other.tokenB, tokenB) || other.tokenB == tokenB));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tokenA, tokenB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensChoosenCopyWith<_$_TokensChoosen> get copyWith =>
      __$$_TokensChoosenCopyWithImpl<_$_TokensChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Token token, List<Token> tokenList) tokenChoosen,
    required TResult Function(Token tokenA, Token tokenB) tokensChoosen,
  }) {
    return tokensChoosen(tokenA, tokenB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult? Function(Token tokenA, Token tokenB)? tokensChoosen,
  }) {
    return tokensChoosen?.call(tokenA, tokenB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Token token, List<Token> tokenList)? tokenChoosen,
    TResult Function(Token tokenA, Token tokenB)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (tokensChoosen != null) {
      return tokensChoosen(tokenA, tokenB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TokenChoosen value) tokenChoosen,
    required TResult Function(_TokensChoosen value) tokensChoosen,
  }) {
    return tokensChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TokenChoosen value)? tokenChoosen,
    TResult? Function(_TokensChoosen value)? tokensChoosen,
  }) {
    return tokensChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TokenChoosen value)? tokenChoosen,
    TResult Function(_TokensChoosen value)? tokensChoosen,
    required TResult orElse(),
  }) {
    if (tokensChoosen != null) {
      return tokensChoosen(this);
    }
    return orElse();
  }
}

abstract class _TokensChoosen implements ChooseTokenState {
  const factory _TokensChoosen(
      {required final Token tokenA,
      required final Token tokenB}) = _$_TokensChoosen;

  Token get tokenA;
  Token get tokenB;
  @JsonKey(ignore: true)
  _$$_TokensChoosenCopyWith<_$_TokensChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseTokenEvent {
  Token get token => throw _privateConstructorUsedError;
  List<Token> get tokenList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token, List<Token> tokenList) chooseToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token, List<Token> tokenList)? chooseToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token, List<Token> tokenList)? chooseToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChooseTokenEvent value) chooseToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChooseTokenEvent value)? chooseToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChooseTokenEvent value)? chooseToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseTokenEventCopyWith<ChooseTokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseTokenEventCopyWith<$Res> {
  factory $ChooseTokenEventCopyWith(
          ChooseTokenEvent value, $Res Function(ChooseTokenEvent) then) =
      _$ChooseTokenEventCopyWithImpl<$Res, ChooseTokenEvent>;
  @useResult
  $Res call({Token token, List<Token> tokenList});
}

/// @nodoc
class _$ChooseTokenEventCopyWithImpl<$Res, $Val extends ChooseTokenEvent>
    implements $ChooseTokenEventCopyWith<$Res> {
  _$ChooseTokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenList = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenList: null == tokenList
          ? _value.tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChooseTokenEventCopyWith<$Res>
    implements $ChooseTokenEventCopyWith<$Res> {
  factory _$$_ChooseTokenEventCopyWith(
          _$_ChooseTokenEvent value, $Res Function(_$_ChooseTokenEvent) then) =
      __$$_ChooseTokenEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Token token, List<Token> tokenList});
}

/// @nodoc
class __$$_ChooseTokenEventCopyWithImpl<$Res>
    extends _$ChooseTokenEventCopyWithImpl<$Res, _$_ChooseTokenEvent>
    implements _$$_ChooseTokenEventCopyWith<$Res> {
  __$$_ChooseTokenEventCopyWithImpl(
      _$_ChooseTokenEvent _value, $Res Function(_$_ChooseTokenEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenList = null,
  }) {
    return _then(_$_ChooseTokenEvent(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenList: null == tokenList
          ? _value._tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$_ChooseTokenEvent implements _ChooseTokenEvent {
  const _$_ChooseTokenEvent(
      {required this.token, required final List<Token> tokenList})
      : _tokenList = tokenList;

  @override
  final Token token;
  final List<Token> _tokenList;
  @override
  List<Token> get tokenList {
    if (_tokenList is EqualUnmodifiableListView) return _tokenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenList);
  }

  @override
  String toString() {
    return 'ChooseTokenEvent.chooseToken(token: $token, tokenList: $tokenList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseTokenEvent &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._tokenList, _tokenList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, token, const DeepCollectionEquality().hash(_tokenList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseTokenEventCopyWith<_$_ChooseTokenEvent> get copyWith =>
      __$$_ChooseTokenEventCopyWithImpl<_$_ChooseTokenEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token, List<Token> tokenList) chooseToken,
  }) {
    return chooseToken(token, tokenList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Token token, List<Token> tokenList)? chooseToken,
  }) {
    return chooseToken?.call(token, tokenList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token, List<Token> tokenList)? chooseToken,
    required TResult orElse(),
  }) {
    if (chooseToken != null) {
      return chooseToken(token, tokenList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChooseTokenEvent value) chooseToken,
  }) {
    return chooseToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChooseTokenEvent value)? chooseToken,
  }) {
    return chooseToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChooseTokenEvent value)? chooseToken,
    required TResult orElse(),
  }) {
    if (chooseToken != null) {
      return chooseToken(this);
    }
    return orElse();
  }
}

abstract class _ChooseTokenEvent implements ChooseTokenEvent {
  const factory _ChooseTokenEvent(
      {required final Token token,
      required final List<Token> tokenList}) = _$_ChooseTokenEvent;

  @override
  Token get token;
  @override
  List<Token> get tokenList;
  @override
  @JsonKey(ignore: true)
  _$$_ChooseTokenEventCopyWith<_$_ChooseTokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
