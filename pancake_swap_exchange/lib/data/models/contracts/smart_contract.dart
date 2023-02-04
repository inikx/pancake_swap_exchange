import 'package:flutter/services.dart';
import 'package:web3dart/web3dart.dart';

class SmartContract {
  final Web3Client web3Client;
  final String contractAbiPath;
  final String contractName;
  final String contractAddress;

  SmartContract({
    required this.web3Client,
    required this.contractAbiPath,
    required this.contractName,
    required this.contractAddress,
  });

  Future<DeployedContract> getContract() async {
    final abi = await rootBundle.loadString(contractAbiPath);
    final contract = DeployedContract(
      ContractAbi.fromJson(abi, contractName),
      EthereumAddress.fromHex(contractAddress),
    );
    return contract;
  }

  Future<List<dynamic>> function(
    String functionName,
    List<dynamic> params,
  ) async {
    final contract = await getContract();
    final function = contract.function(functionName);
    return web3Client.call(
      contract: contract,
      function: function,
      params: params,
    );
  }
}
