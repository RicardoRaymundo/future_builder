import 'package:flutter/material.dart';
import 'package:future_builder/api_connect/api_connect.dart';
import 'package:future_builder/user/user_list.dart';
import 'package:future_builder/user/userx.dart';

class MainService {
  static FutureBuilder users() {
    final processData = (jsonData) {
      List<Userx> users = [];

      for (var item in jsonData) {
        Userx userx = Userx(item);
        users.add(userx);
      }

      return users;
    };

    final createlist = (snapshot) {
      return UserList(snapshot);
    };

    return ApiConnect.get(
        "http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2",
        processData,
        createlist
    );
  }
}
