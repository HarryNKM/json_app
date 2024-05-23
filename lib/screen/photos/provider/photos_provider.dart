import 'package:flutter/material.dart';
import 'package:json_app/screen/photos/modal/photos_modal.dart';
import '../../../utils/jsonHelper/json_helper.dart';

class PhotosProvider with ChangeNotifier
{
  List<PhotosModal> photosList = [];
  Future<void> getJsonData()
  async {
    postjsonHelper helper = postjsonHelper();
    photosList = await helper.photosJsonParsing();
    notifyListeners();
  }



}