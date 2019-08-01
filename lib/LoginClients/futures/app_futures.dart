import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:resturant/LoginClients/utils/app_shared_preferences.dart';
import 'package:resturant/model/MazzayaResponse.dart';

import '../models/base/EventObject.dart';
import '../utils/constants.dart';

Future<EventObject> loginUser(String userEmail, String password) async {
  try {
    final response = await http.get(
      'http://mazzaya.net/restomax/merchantapp/api/Login?username=' +
          userEmail +
          '&password=' +
          password,
      headers: {"Accept": "application/json"},
    );

    if (response != null) {
      if (response.statusCode == APIResponseCode.SC_OK &&
          response.body != null) {
        final responseJson = json.decode(response.body);
        MazzayaResponse apiResponse = MazzayaResponse.fromJson(responseJson);
        Details details;
        Requester requester;
        if (apiResponse.code == 1) {
          print(response.body);
          details = Details.fromJson(apiResponse.details);
          requester = Requester.fromJson(apiResponse.requester);
          AppSharedPreferences.setInSession(
              'userName', details.client_name_cookie);
          AppSharedPreferences.setInSession('userToken', details.token);
          AppSharedPreferences.setInSession('userAvatar', details.avatar);
          AppSharedPreferences.setInSession(
              'userEmail', requester.email_address);
          return new EventObject(id: 1, object: apiResponse);
        } else if (apiResponse.code == 2) {
          return new EventObject(id: 2, object: apiResponse);
        } else {
          return new EventObject(id: 3, object: apiResponse);
        }
      } else {
        return new EventObject(id: 4);
      }
    } else {
      return new EventObject();
    }
  } catch (Exception) {
    print(Exception);
    return EventObject();
  }
}
