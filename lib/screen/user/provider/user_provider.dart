import 'package:flutter/material.dart';
import 'package:json_app/utils/jsonHelper/json_helper.dart';

import '../modal/user_modal.dart';

class UserProvider with ChangeNotifier
{
  List<UserModal> userList=[];
  Future<void> getUserJsonData()
  async {
    postjsonHelper helper = postjsonHelper();
    userList= await helper.userJsonParsing();
    notifyListeners();
  }
}