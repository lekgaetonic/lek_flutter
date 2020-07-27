import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Wishlish extends StatefulWidget {
  @override
  _WishlishState createState() => _WishlishState();
}

class _WishlishState extends State<Wishlish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Text("wishlish"),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
