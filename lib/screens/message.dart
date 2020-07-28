import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  void initState() {
    super.initState();
    print('message --> init');
  }

  @override
  Widget build(BuildContext context) {
    print('message --> build');
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: Header(),
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                  'https://ktw.co.th/content/images/thumbs/w_1_0367672_M011-9533_M011-95330000_60.jpeg'),
            ),
            title: Text(
              'กบไสไม้ ขนาด 3 นิ้ว MAKITA  รุ่น 1600 กำลังไฟ 750 วัตต์ กบกินเนื้อไม้ลึก 3 มม. หน้ากว้างการไสไม้ 80 มม. ความเร็วรอบ 16,000 RPM',
              maxLines: 2,
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'M011-9533B',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'MAKITA',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xFFBBBBBB)),
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        'outOfStock',
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF), fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '111,111',
                        style: TextStyle(
                            color: const Color(0xFF68A63B),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '222,222',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '50%',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // trailing: Column(
            //   children: <Widget>[
            //     Text(
            //       'inStock',
            //       style: TextStyle(
            //         color: const Color(0xFF6B8F71),
            //         // fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                  'https://ktw.co.th/content/images/thumbs/w_1_0380345_M011-9533BL_M011-9533BL0000_60.jpeg'),
            ),
            title: Text(
              'กบไสไม้ ขนาด 3 นิ้ว MAKITA  รุ่น 1600 กำลังไฟ 750 วัตต์ กบกินเนื้อไม้ลึก 3 มม. หน้ากว้างการไสไม้ 80 มม. ความเร็วรอบ 16,000 RPM',
              maxLines: 2,
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'M011-9533B',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'MAKITA',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xFF68A63B)),
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        'inStock',
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF), fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '111,111',
                        style: TextStyle(
                            color: const Color(0xFF68A63B),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '222,222',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '50% 5%',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // trailing: Column(
            //   children: <Widget>[
            //     Text(
            //       'inStock',
            //       style: TextStyle(
            //         color: const Color(0xFF6B8F71),
            //         // fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
          ),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                  'https://ktw.co.th/content/images/thumbs/w_1_0367779_1600-%E0%B9%84%E0%B8%AA%E0%B9%84%E0%B8%A1%E0%B9%89-3_60.jpeg'),
            ),
            title: Text(
              'กบไสไม้ ขนาด 3 นิ้ว MAKITA  รุ่น 1600 กำลังไฟ 750 วัตต์ กบกินเนื้อไม้ลึก 3 มม. หน้ากว้างการไสไม้ 80 มม. ความเร็วรอบ 16,000 RPM',
              maxLines: 2,
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'M011-9533B',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'MAKITA',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0x9968A63B)),
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Text(
                        'lowStock',
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF), fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '111,111',
                        style: TextStyle(
                            color: const Color(0xFF68A63B),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        '222,222',
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        'at price',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // trailing: Column(
            //   children: <Widget>[
            //     Text(
            //       'inStock',
            //       style: TextStyle(
            //         color: const Color(0xFF6B8F71),
            //         // fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
