import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Utills/helpers.dart';
import 'package:grocery_shopping1/models/City.dart';
import 'package:http/http.dart' as http;

import 'api_settings.dart';

class UserApiController with Helpers{
  Future<List<City>> getUsers(BuildContext context) async {
    var url = Uri.parse(ApiSettings.CITY);
    var response = await http.get(url);

    if (response.statusCode < 400) {
      var json = jsonDecode(response.body)['list'] as List;
      List<City> city =
      json.map((jsonObject) => City.fromJson(jsonObject)).toList();
      return city;
    } else if (response.statusCode == 500) {
      //TODO:SERVER ERROR -SHOW MESSAGAE
      showMessage(context, message: 'Something went wrong , please try again!',error: true);
    } else {
      showMessage(context, message: jsonDecode(response.body)['message'],error: true);
    }

    return [];
  }
}
