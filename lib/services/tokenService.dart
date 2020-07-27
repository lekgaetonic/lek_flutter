import 'package:shared_preferences/shared_preferences.dart';
import "package:my_flutter_app/data/TokenData.dart";

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

class TokenService {
  String tokenKey = "ACCESS_TOKEN";

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> setToken(String accessToken) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(tokenKey, accessToken);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(tokenKey);
  }

  Future<TokenData> fetchAnonymousToken() async {
    Dio dio = new Dio();
    Response response = await dio.post(
        "https://ktwdevapi.ktw.co.th/authorizationserver/oauth/token",
        data: {
          "client_id": "mobile_android",
          "client_secret": "secret",
          "grant_type": "client_credentials"
        },
        options: Options(contentType: Headers.formUrlEncodedContentType));

    if (response.statusCode == 200) {
      //print(response.data);
      return TokenData.fromJson(response.data);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print(response.statusCode);
      throw Exception(response.data);
    }
  }

  Future<TokenData> fetchLoginToken(String username, String password) async {
    final response = await http.post(
      'https://ktwdevapi.ktw.co.th/authorizationserver/oauth/token',
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: jsonEncode(<String, String>{
        "client_id": "mobile_android",
        "client_secret": "secret",
        "grant_type": "password",
        "username": username,
        "password": password
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return TokenData.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
