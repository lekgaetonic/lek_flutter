import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        AntDesign.arrowleft,
        color: Colors.black54,
      ),
      title: Container(
        height: 36,
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: const Color(0xFFF2F3F7),
              filled: true,
              prefixIcon: const Icon(
                AntDesign.search1,
                color: Colors.black54,
              ),
              // suffixIcon: const Icon(
              //   AntDesign.qrcode,
              //   color: Colors.black87,
              // ),
              hintText: 'ค้นหาสินค้า',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8)),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
      actions: <Widget>[
        // Container(
        //   padding: EdgeInsets.only(right: 20),
        //   child: const Icon(
        //     AntDesign.shoppingcart,
        //     color: Colors.black54,
        //   ),
        // ),
        Container(
          padding: EdgeInsets.only(right: 20),
          child: const Icon(
            AntDesign.shoppingcart,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
