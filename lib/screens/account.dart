import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    super.initState();
    print('account --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('account --> build');
    return Scaffold(
      appBar: Header(),
      body: Text("account"),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
