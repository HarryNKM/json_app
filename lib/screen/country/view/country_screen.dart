import 'package:flutter/material.dart';
import 'package:json_app/screen/country/provider/country_provider.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}


class _CountryScreenState extends State<CountryScreen> {
  CountryProvider? providerR;
  CountryProvider? providerW;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CountryProvider>().getCountryJsonData();

  }
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<CountryProvider>();
    providerR=context.read<CountryProvider>();
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("Photos",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: providerW!.countryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'countryDetail',arguments: index);
            },
            leading: CircleAvatar(backgroundImage: NetworkImage("${providerW!.countryList[index].flagsmodal!.png}"),),
            title: Text("${providerW!.countryList[index].namemodal!.common}"),
            subtitle: Text("${providerW!.countryList[index].namemodal!.official}"),

          );
        },),

    );

  }
}
