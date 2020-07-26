import 'package:flutter/material.dart';

import 'package:my_flutter_app/data/CustomTheme.dart';

Future<CustomTheme> fetchCustomTheme() async {
  return CustomTheme(
      primaryColor: const Color(0xFFf5821f),
      title: 'assets/images/logo.png',
      fontFamily: 'Sukhumvit',
      appName: 'KTW Shop',
      slaveColor: Colors.green,
      anchorColor: Colors.blueGrey,
      appBarIconThemeColor: Colors.white);
}
