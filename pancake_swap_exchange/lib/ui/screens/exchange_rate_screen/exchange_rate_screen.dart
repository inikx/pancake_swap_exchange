import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:pancake_swap_exchange/data/models/contracts/router_contract.dart';
import 'package:pancake_swap_exchange/data/models/token.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';
import 'package:pancake_swap_exchange/utils/constants/web3_client_url.dart';
import 'package:web3dart/web3dart.dart';

class ExchangeRateScreen extends StatefulWidget {
  final Token tokenA;
  final Token tokenB;
  const ExchangeRateScreen({
    super.key,
    required this.tokenA,
    required this.tokenB,
  });

  @override
  State<ExchangeRateScreen> createState() => _ExchangeRateScreenState();
}

class _ExchangeRateScreenState extends State<ExchangeRateScreen> {
  late StreamController<List<dynamic>> _streamController;
  late Timer _timer;
  late Client _httpClient;
  late Web3Client _web3client;

  @override
  void initState() {
    _streamController = StreamController();
    _httpClient = Client();
    _web3client = Web3Client(Web3ClientUrl.url, _httpClient);
    getAmountsOut();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      getAmountsOut();
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamController.close();
    _timer.cancel();
    super.dispose();
  }

  Future<void> getAmountsOut() async {
    return RouterContract(web3Client: _web3client)
        .getAmountsOut(
          BigInt.from(1e6),
          EthereumAddress.fromHex(widget.tokenA.address),
          EthereumAddress.fromHex(widget.tokenB.address),
        )
        .then((value) => _streamController.sink.add(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Price'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<List<dynamic>>(
                stream: _streamController.stream,
                builder: (context, snapshot) {
                  final now = DateTime.now();
                  final formattedDate =
                      DateFormat('MMM dd, yyyy – HH:mm:ss').format(now);
                  if (snapshot.hasData) {
                    if (snapshot.data!.isNotEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.darkBlue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(widget.tokenA.imagePath),
                                    ),
                                    Text(
                                      ' ${widget.tokenA.name}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(widget.tokenB.imagePath),
                                    ),
                                    Text(
                                      ' ${widget.tokenB.name}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Text(
                                  '${snapshot.data![1]}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  formattedDate,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                    return Text(
                      'No data',
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      'Error: ${snapshot.error}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
