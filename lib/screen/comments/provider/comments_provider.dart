import 'package:flutter/material.dart';
import 'package:json_app/utils/jsonHelper/json_helper.dart';

import '../modal/comments_modal.dart';

class CommentsProvider with ChangeNotifier {
  List<CommentsJsonModal> commentsList=[];

  Future<void> getJsonData() async {
    postjsonHelper helper = postjsonHelper();
    commentsList = await helper.commentsJsonParsing();
    notifyListeners();
  }
}