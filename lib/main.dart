import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:my_flutter_app/screens/home.dart';
import 'package:my_flutter_app/widgets/header.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:my_flutter_app/data/TokenData.dart";
import 'dart:async';
import 'package:dio/dio.dart';

import 'package:my_flutter_app/screens/message.dart';
import 'package:my_flutter_app/screens/cart.dart';
import 'package:my_flutter_app/screens/wishlist.dart';
import 'package:my_flutter_app/screens/account.dart';
import 'package:my_flutter_app/screens/search.dart';

/// main is entry point of Flutter application
void main() {
  // Desktop platforms aren't a valid platform.
  if (!kIsWeb) _setTargetPlatformForDesktop();
  return runApp(MyApp());
}

/// If the current platform is desktop, override the default platform to
/// a supported platform (iOS for macOS, Android for Linux and Windows).
/// Otherwise, do nothing.
void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

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
      print(response.data);
      return TokenData.fromJson(response.data);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print(response.statusCode);
      throw Exception(response.data);
    }
  }

  TokenData _token = null;
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchAnonymousToken().then((value) => {
          _prefs.then((SharedPreferences prefs) =>
              prefs.setString("token", _token.accessToken)),
          setState(() {
            _token = value;
            _isLoading = false;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Container(
            color: Color(0xFF0A111F),
            child: Image.asset(
              'assets/loadings/loading2.gif',
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Sukhumvit',
              primaryColor: const Color(0xFFF5821F),
              accentColor: Color(0xFF337ab7),
            ),
            home: Home(),
            routes: <String, WidgetBuilder>{
              '/home': (BuildContext context) => new Home(),
              '/search': (BuildContext context) => new Search(),
              '/message': (BuildContext context) => new Message(),
              '/cart': (BuildContext context) => new Cart(),
              '/wishlist': (BuildContext context) => new Wishlish(),
              '/account': (BuildContext context) => new Account(),
            },
          );
  }
}
