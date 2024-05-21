import 'dart:convert';


import 'package:flutter/services.dart';
import 'package:json_app/screen/home/modal/json_modal.dart';

class jsonHelper {
  Future<List<JsonModal>> jsonParsing() async {
    String? jsonlist =
        await rootBundle.loadString("assetes/json/post_json.json");
    List json = jsonDecode(jsonlist);

    List<JsonModal> m1 = json.map((e) => JsonModal.mapToModal(e)).toList();
    return m1;
  }
}
