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
      // centerTitle: true,
      leading: const Icon(
        AntDesign.arrowleft,
        color: const Color(0xFF4B2504),
      ),
      title: Container(
        height: 36,
        child: TextFormField(
          // style: TextStyle(color: const Color(0xFFFBD3AF)),
          decoration: InputDecoration(
              fillColor: const Color(0xFFFBD3AF),
              filled: true,
              prefixIcon: const Icon(
                AntDesign.search1,
                color: const Color(0xFFA95308),
                size: 18,
              ),
              // suffixIcon: const Icon(
              //   AntDesign.qrcode,
              //   color: Colors.black87,
              // ),
              hintText: 'ค้นหาสินค้า',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: const Color(0xFFCF660A),
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: const Color(0xFFCF660A),
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
            color: const Color(0xFF4B2504),
          ),
        ),
      ],
    );
  }
}
