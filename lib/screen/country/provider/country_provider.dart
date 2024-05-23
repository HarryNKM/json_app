import 'package:flutter/material.dart';
import 'package:json_app/screen/country/modal/country_modal.dart';
import 'package:json_app/utils/jsonHelper/json_helper.dart';

class CountryProvider with ChangeNotifier
{
  List<CountryModal> countryList = [];
  Future<void> getCountryJsonData()
  async {
    postjsonHelper helper=postjsonHelper();
    countryList=await helper.countryJosnParsiong();
    notifyListeners();
  }
}