import 'package:shared_preferences/shared_preferences.dart';
import "package:my_flutter_app/models/HomeWidgetModel.dart";

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

class HomeService {
  Future<HomeWidgetModel> fetchHomeWidget(String token) async {
    Dio dio = new Dio();
    Response response = await dio.post(
        "https://ktwdevapi.ktw.co.th/rest/v2/ktw/cms/rotatecomponent",
        data: {
          "component": "KtwHomePageRotaingImagesComponent",
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          headers: {"authorization": "Bearer $token"},
        ));

    if (response.statusCode == 200) {
      print(response.data);
      return HomeWidgetModel.fromJson(response.data);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print(response.statusCode);
      throw Exception(response.data);
    }
  }
}
