import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_flutter_app/screens/search.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry _overlayEntry;

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        this._overlayEntry = this._createOverlayEntry();
        Overlay.of(context).insert(this._overlayEntry);
      } else {
        this._overlayEntry.remove();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      // leading: IconButton(
      //     icon: const Icon(
      //       SimpleLineIcons.arrow_left,
      //       color: Color(0xFF333333),
      //     ),
      //     onPressed: () {}),
      title: Container(
        height: 36,
        child: TextFormField(
          focusNode: this._focusNode,
          style: TextStyle(color: const Color(0xFFA95308)),
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
              hintStyle: TextStyle(color: const Color(0xFFA95308)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: const Color(0xFFF5821F),
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: const Color(0xFFF5821F),
                  width: 1.0,
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8)),
          onTap: () => {},
          onChanged: (value) => {print(value)},
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
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: const Icon(
            Icons.more_horiz,
            color: Color(0xFFFBD3AF),
            size: 30,
          ),
        ),
      ],
    );
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject();
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height,
              width: size.width,
              child: Material(
                color: Color(0xFFFFFFFF),
                elevation: 4.0,
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Image.network(
                          'https://ktw.co.th/content/images/thumbs/w_1_0367672_M011-9533_M011-95330000_300.jpeg'),
                      title: Text(
                        'เครื่องเจียร์ รอบเร็ว MAKITA รุ่น 9533 กำลังไฟฟ้า 720 วัตต์ ขนาดใบตัด 110 มม. มีช่องระบายความร้อน',
                        maxLines: 2,
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(4.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'MAKITA',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(8.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'M011-9533B',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '224,600',
                        style: TextStyle(
                          color: const Color(0xFF6B8F71),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                          'https://ktw.co.th/content/images/thumbs/w_1_0464452_%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%B4%E0%B8%A8-9533b-%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%B5%E0%B8%A3%E0%B9%8C-%E0%B8%A3%E0%B8%A3%E0%B9%87_60.jpeg'),
                      title: Text(
                        'เครื่องเจียร์ รอบเร็ว MAKITA รุ่น 9533B กำลังไฟฟ้า 720 วัตต์ ขนาดใบตัด 110 มม. ความเร็วรอบตัวเปล่า 12,000 RPM มีช่องระบายความร้อน',
                        maxLines: 2,
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(4.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'MAKITA',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(8.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'M011-9533B',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '114,130',
                        style: TextStyle(
                          color: const Color(0xFF6B8F71),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                          'https://ktw.co.th/content/images/thumbs/w_1_0367779_1600-%E0%B9%84%E0%B8%AA%E0%B9%84%E0%B8%A1%E0%B9%89-3_60.jpeg'),
                      title: Text(
                        'กบไสไม้ ขนาด 3 นิ้ว MAKITA  รุ่น 1600 กำลังไฟ 750 วัตต์ กบกินเนื้อไม้ลึก 3 มม. หน้ากว้างการไสไม้ 80 มม. ความเร็วรอบ 16,000 RPM',
                        maxLines: 2,
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(4.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'MAKITA',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            // padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(8.0),
                            //     color: const Color(0xFFEEEEEE)),
                            child: Text(
                              'M011-9533B',
                              // style: TextStyle(
                              //   color: const Color(0xFFEF494E),
                              // ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '334,600',
                        style: TextStyle(
                          color: const Color(0xFF6B8F71),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
