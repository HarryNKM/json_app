import 'dart:convert';


import 'package:flutter/services.dart';
import 'package:json_app/screen/albums/modal/album_modal.dart';
import 'package:json_app/screen/comments/modal/comments_modal.dart';
import 'package:json_app/screen/home/modal/json_modal.dart';
import 'package:json_app/screen/photos/modal/photos_modal.dart';

import '../../screen/user/modal/user_modal.dart';

class postjsonHelper {
  Future<List<JsonModal>> postJsonParsing() async {
    String? jsonlist =
    await rootBundle.loadString("assetes/json/post_json.json");
    List json = jsonDecode(jsonlist);

    List<JsonModal> m1 = json.map((e) => JsonModal.mapToModal(e)).toList();
    return m1;
  }

  Future<List<CommentsJsonModal>> commentsJsonParsing() async {
    String? jsonlist =
    await rootBundle.loadString("assetes/json/comments_json.json");
    List json = jsonDecode(jsonlist);

    List<CommentsJsonModal> c1 = json.map((e) => CommentsJsonModal.mapToModal(e)).toList();
    return c1;
  }

  Future<List<AlbumJsonModal>> albumJsonParsing()
  async {
    String? jsonList =await rootBundle.loadString("assetes/json/album_json.json");
    List json = jsonDecode(jsonList);

    List<AlbumJsonModal> a1=json.map((e) => AlbumJsonModal.mapToModal(e)).toList();
    return a1;
  }

  Future<List<PhotosModal>> photosJsonParsing()
  async {
    String? jsonList = await rootBundle.loadString("assetes/json/photos_json.json");
    List json = jsonDecode(jsonList);

    List<PhotosModal> p1=json.map((e) => PhotosModal.mapToModal(e)).toList();
    return p1;
  }

  Future<List<UserModal>> userJsonParsing()
  async {
    String? jsonList=await rootBundle.loadString("assetes/json/user_json.json");
    List json = jsonDecode(jsonList);

    List<UserModal> u1=json.map((e)=> UserModal.mapToModal(e)).toList();
    return u1;
  }
}