import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Wishlish extends StatefulWidget {
  @override
  _WishlishState createState() => _WishlishState();
}

class _WishlishState extends State<Wishlish> {
  @override
  void initState() {
    super.initState();
    print('wishlist --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('wishlist --> build');
    return Scaffold(
      appBar: Header(),
      body: Text("wishlist"),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
