import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
    print('cart --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('cart --> build');
    return Scaffold(
      appBar: Header(),
      body: Text("cart"),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
