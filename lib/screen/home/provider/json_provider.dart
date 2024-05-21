
import 'package:flutter/material.dart';
import 'package:json_app/screen/home/modal/json_modal.dart';
import 'package:json_app/utils/jsonHelper/json_helper.dart';

class jsonProvider with ChangeNotifier {
  List<JsonModal> postList=[];

  Future<void> getJsonData() async {
    jsonHelper helper = jsonHelper();
    postList = await helper.jsonParsing();

    notifyListeners();
  }
}
