import 'package:auto_route/auto_route.dart';
import 'package:pancake_swap_exchange/ui/screens/choose_token_screen.dart/choose_token_screen.dart';
import 'package:pancake_swap_exchange/ui/screens/exchange_rate_screen/exchange_rate_screen.dart';
import 'package:pancake_swap_exchange/ui/screens/pair_screen/pair_screen.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(path: '/pair', page: PairScreen, initial: true),
    AutoRoute(path: '/token', page: ChooseTokenScreen),
    AutoRoute(path: '/exchange_rate', page: ExchangeRateScreen),
  ],
)
class $AppRouter {}
