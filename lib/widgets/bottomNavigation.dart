import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/account.dart';
import 'package:my_flutter_app/screens/cart.dart';
import 'package:my_flutter_app/screens/home.dart';
import 'package:my_flutter_app/screens/message.dart';
import 'package:my_flutter_app/screens/wishlist.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_flutter_app/util/globalStageManager.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  GlobalStageManager _gsm = GlobalStageManager();

  @override
  void initState() {
    super.initState();

    _gsm.getBottomNavigationCurrentIndex().then((value) => {
          setState(() {
            _selectedIndex = value;
          })
        });
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _gsm.setBottomNavigationCurrentIndex(index);
    switch (index) {
      case 0:
        {
          Navigator.pushNamed(context, '/home');
        }
        break;
      case 1:
        {
          Navigator.pushNamed(context, '/message');
        }
        break;
      case 2:
        {
          Navigator.pushNamed(context, '/cart');
        }
        break;
      case 3:
        {
          Navigator.pushNamed(context, '/wishlist');
        }
        break;
      case 4:
        {
          Navigator.pushNamed(context, '/account');
        }
        break;
      default:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        }
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        // showSelectedLabels: false,
        showUnselectedLabels: true,
        unselectedItemColor: Color(0xFF707070),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFF5821F),
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AntDesign.home),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.notification),
            title: Text(
              'Feed',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.shoppingcart),
            title: Text(
              'Cart',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.hearto),
            title: Text(
              'Wishlist',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.user),
            title: Text(
              'Account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ]);
  }
}
