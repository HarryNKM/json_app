import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/country_provider.dart';

class CountryDetailScreen extends StatefulWidget {
  const CountryDetailScreen({super.key});

  @override
  State<CountryDetailScreen> createState() => _CountryDetailScreenState();
}

class _CountryDetailScreenState extends State<CountryDetailScreen> {
  CountryProvider? providerR;
  CountryProvider? providerW;
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<CountryProvider>();
    providerR=context.read<CountryProvider>();
    int index=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text("COUNTRY DETAIL"),
      ),
      body:  Column(
        children: [
          Text("${providerW!.countryList[index].namemodal!.common}"),
        ],
      ),
    );

  }
}
