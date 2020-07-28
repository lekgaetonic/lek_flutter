import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  void initState() {
    super.initState();
    print('search --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('search --> build');
    return Scaffold(
      appBar: Header(),
      body: Text("message"),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
