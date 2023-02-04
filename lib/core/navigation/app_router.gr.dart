// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../data/models/token.dart' as _i6;
import '../../ui/screens/choose_token_screen.dart/choose_token_screen.dart'
    as _i2;
import '../../ui/screens/exchange_rate_screen/exchange_rate_screen.dart' as _i3;
import '../../ui/screens/pair_screen/pair_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PairScreenRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PairScreen(),
      );
    },
    ChooseTokenScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseTokenScreenRouteArgs>();
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.ChooseTokenScreen(
          key: args.key,
          isTokenA: args.isTokenA,
          tokenList: args.tokenList,
        ),
      );
    },
    ExchangeRateScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ExchangeRateScreenRouteArgs>();
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.ExchangeRateScreen(
          key: args.key,
          tokenA: args.tokenA,
          tokenB: args.tokenB,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/pair',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          PairScreenRoute.name,
          path: '/pair',
        ),
        _i4.RouteConfig(
          ChooseTokenScreenRoute.name,
          path: '/token',
        ),
        _i4.RouteConfig(
          ExchangeRateScreenRoute.name,
          path: '/exchange_rate',
        ),
      ];
}

/// generated route for
/// [_i1.PairScreen]
class PairScreenRoute extends _i4.PageRouteInfo<void> {
  const PairScreenRoute()
      : super(
          PairScreenRoute.name,
          path: '/pair',
        );

  static const String name = 'PairScreenRoute';
}

/// generated route for
/// [_i2.ChooseTokenScreen]
class ChooseTokenScreenRoute
    extends _i4.PageRouteInfo<ChooseTokenScreenRouteArgs> {
  ChooseTokenScreenRoute({
    _i5.Key? key,
    required bool isTokenA,
    required List<_i6.Token> tokenList,
  }) : super(
          ChooseTokenScreenRoute.name,
          path: '/token',
          args: ChooseTokenScreenRouteArgs(
            key: key,
            isTokenA: isTokenA,
            tokenList: tokenList,
          ),
        );

  static const String name = 'ChooseTokenScreenRoute';
}

class ChooseTokenScreenRouteArgs {
  const ChooseTokenScreenRouteArgs({
    this.key,
    required this.isTokenA,
    required this.tokenList,
  });

  final _i5.Key? key;

  final bool isTokenA;

  final List<_i6.Token> tokenList;

  @override
  String toString() {
    return 'ChooseTokenScreenRouteArgs{key: $key, isTokenA: $isTokenA, tokenList: $tokenList}';
  }
}

/// generated route for
/// [_i3.ExchangeRateScreen]
class ExchangeRateScreenRoute
    extends _i4.PageRouteInfo<ExchangeRateScreenRouteArgs> {
  ExchangeRateScreenRoute({
    _i5.Key? key,
    required _i6.Token tokenA,
    required _i6.Token tokenB,
  }) : super(
          ExchangeRateScreenRoute.name,
          path: '/exchange_rate',
          args: ExchangeRateScreenRouteArgs(
            key: key,
            tokenA: tokenA,
            tokenB: tokenB,
          ),
        );

  static const String name = 'ExchangeRateScreenRoute';
}

class ExchangeRateScreenRouteArgs {
  const ExchangeRateScreenRouteArgs({
    this.key,
    required this.tokenA,
    required this.tokenB,
  });

  final _i5.Key? key;

  final _i6.Token tokenA;

  final _i6.Token tokenB;

  @override
  String toString() {
    return 'ExchangeRateScreenRouteArgs{key: $key, tokenA: $tokenA, tokenB: $tokenB}';
  }
}
