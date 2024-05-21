import 'package:flutter/material.dart';
import 'package:json_app/utils/jsonHelper/json_helper.dart';

import '../modal/album_modal.dart';

class AlbumProvider with ChangeNotifier {
  List<AlbumJsonModal> albumList=[];

  Future<void> getJsonData() async {
    postjsonHelper helper = postjsonHelper();
    albumList = await helper.albumJsonParsing();
    notifyListeners();
  }
}
