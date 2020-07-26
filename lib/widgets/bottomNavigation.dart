import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationDotBar(
        // Usar -> "BottomNavigationDotBar"
        activeColor: const Color(0xFFFF9F1C),
        items: <BottomNavigationDotBarItem>[
          BottomNavigationDotBarItem(
              icon: AntDesign.home,
              onTap: () {/* Cualquier funcion - [abrir nueva venta] */}),
          BottomNavigationDotBarItem(
              icon: AntDesign.notification,
              onTap: () {/* Cualquier funcion - [abrir nueva venta] */}),
          BottomNavigationDotBarItem(
              icon: AntDesign.shoppingcart,
              onTap: () {/* Cualquier funcion - [abrir nueva venta] */}),
          BottomNavigationDotBarItem(
              icon: AntDesign.hearto,
              onTap: () {/* Cualquier funcion - [abrir nueva venta] */}),
          BottomNavigationDotBarItem(
              icon: AntDesign.user,
              onTap: () {/* Cualquier funcion - [abrir nueva venta] */}),
        ]);
  }
}
