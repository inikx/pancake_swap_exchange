import 'package:pancake_swap_exchange/data/models/token.dart';

enum TokensAB { tokenA, tokenB }

abstract class Tokens {
  static final List<Token> tokenList = [
    Token(
      name: 'BNB',
      description: 'Binance Chain Smart Token',
      imagePath:
          'assets/images/tokens/0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c.png',
      address: '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c',
    ),
    Token(
      name: 'CAKE',
      description: 'PancakeSwap Token',
      imagePath:
          'assets/images/tokens/0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82.png',
      address: '0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82',
    ),
    Token(
      name: 'BUSD',
      description: 'BUSD Token',
      imagePath:
          'assets/images/tokens/0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56.png',
      address: '0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56',
    ),
    Token(
      name: 'USDT',
      description: 'Tether USD',
      imagePath:
          'assets/images/tokens/0x55d398326f99059fF775485246999027B3197955.png',
      address: '0x55d398326f99059fF775485246999027B3197955',
    ),
    Token(
      name: 'BTCB',
      description: 'BTCB Token',
      imagePath:
          'assets/images/tokens/0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c.png',
      address: '0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c',
    ),
    Token(
      name: 'ETH',
      description: 'Ethereum Token',
      imagePath:
          'assets/images/tokens/0x2170Ed0880ac9A755fd29B2688956BD959F933F8.png',
      address: '0x2170Ed0880ac9A755fd29B2688956BD959F933F8',
    ),
    Token(
      name: 'USDC',
      description: 'Binance Pegged USD Token',
      imagePath:
          'assets/images/tokens/0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d.png',
      address: '0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d',
    ),
  ];

  static List<Token> tokenAList = Token.deepCopyList(tokenList);
  static List<Token> tokenBList = Token.deepCopyList(tokenList);
}
