// ignore_for_file: avoid_dynamic_calls, prefer_final_locals

import 'package:pancake_swap_exchange/data/models/contracts/smart_contract.dart';
import 'package:web3dart/web3dart.dart';

class RouterContract extends SmartContract {
  RouterContract({
    required super.web3Client,
  }) : super(
          contractAbiPath: 'assets/abi/pancakeRouter.abi.json',
          contractName: 'PancakeRouter',
          contractAddress: '0x10ed43c718714eb63d5aa57b78b54704e256024e',
        );

  Future<List<dynamic>> getAmountsOut(
    BigInt ammountIn,
    EthereumAddress tokenA,
    EthereumAddress tokenB,
  ) async {
    try {
      final result = await function(
        'getAmountsOut',
        [
          ammountIn,
          [
            tokenA,
            tokenB,
          ]
        ],
      );
      List<dynamic> convertResponse = result.first;
      final formattedPrice =
          convertResponse.map((e) => e.toDouble() / 1e6).toList();
      return formattedPrice;
    } catch (e) {
      rethrow;
    }
  }
}
