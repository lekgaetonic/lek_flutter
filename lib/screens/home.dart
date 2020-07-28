import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/CustomTheme.dart';
import 'package:my_flutter_app/services/getCustomTheme.dart';
import 'package:flutter_mobile_carousel/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_app/widgets/bannerWidget.dart';
import 'package:my_flutter_app/widgets/bottomNavigation.dart';
import 'package:my_flutter_app/widgets/header.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomTheme _customTheme = new CustomTheme(
      primaryColor: Colors.grey,
      title: 'KTW Shop',
      appName: 'KTW Shop',
      appBarIconThemeColor: Color(0xFFFBD3AF));

  @override
  void initState() {
    super.initState();
    print('home --> init');
    fetchCustomTheme().then((value) => setState(() {
          _customTheme = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    print('home --> build');

    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: Header(),
      body: SingleChildScrollView(
        // this will make your body scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //SearchBar<String>(),
            BannerWidget(),
            sectionHeader("โปรโมชั่นแนะนำ"),
            Carousel(
                rowCount: 3,
                children: [
                  'https://ktw.co.th/content/images/thumbs/0471362.jpeg',
                  'https://ktw.co.th/content/images/thumbs/0473123.jpeg',
                  'https://ktw.co.th/content/images/thumbs/0473151_clearance-sale.jpeg',
                  'https://ktw.co.th/content/images/thumbs/0470885_%E0%B8%AA%E0%B8%B4%E0%B8%99%E0%B9%89%E0%B8%A3-b.jpeg',
                  'https://ktw.co.th/content/images/thumbs/0444590_%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B9%84%E0%B8%9F%E0%B8%9F%E0%B9%89.jpeg',
                  'https://ktw.co.th/content/images/thumbs/0444591_%E0%B8%B8%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B9%81%E0%B8%B0%E0%B8%B1%E0%B8%B5.jpeg',
                ].map((String itemText) {
                  return Column(children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(6.0),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Stack(children: <Widget>[
                            Image.network(itemText),
                            Align(
                              alignment: Alignment
                                  .center, // Align however you like (i.e .centerRight, centerLeft)
                              child: Text("อุปกรณ์เสริมและขัดเจีย",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54)),
                            ),
                          ]),
                        )),
                  ]);
                }).toList()),
            sectionHeader("แบรนด์ชั้นนำ"),
            Carousel(
                rowCount: 4,
                children: brandList.map((String itemText) {
                  return Container(
                    margin: EdgeInsets.all(6.0),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[Image.network(itemText)],
                      ),
                    ),
                  );
                  ;
                }).toList()),
            sectionHeader("หมวดหมู่สินค้า"),
            Carousel(
                rowCount: 4,
                children: categoryList.map((String itemText) {
                  return Container(
                    margin: EdgeInsets.all(6.0),
                    alignment: Alignment.center,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(children: <Widget>[
                          Image.network(itemText),
                          Align(
                            alignment: Alignment
                                .center, // Align however you like (i.e .centerRight, centerLeft)
                            child: Text("อุปกรณ์เสริมและขัดเจีย",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    backgroundColor: Colors.black54)),
                          ),
                        ])),
                  );
                }).toList()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

sectionHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[sectionTitle(title), viewMore()],
  );
}

sectionTitle(String title) {
  return Container(
    margin: EdgeInsets.only(left: 10.0, top: 10),
    child: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

viewMore() {
  return Container(
    margin: EdgeInsets.only(right: 10.0, top: 10),
    child: Text(
      'เพิ่มเติม',
      style: TextStyle(fontSize: 12, color: Color(0xFF337ab7)),
    ),
  );
}

// String _host = 'https://ktwdevapi.ktw.co.th';
// final List<String> imgList = [
//   _host +
//       '/medias/sys_master/images/images/h8b/h1b/8845807026206/Happy-May-1900x650.jpg',
//   _host +
//       '/medias/sys_master/images/images/h32/h4a/8845808205854/TOHO-1900x650s.jpg',
//   _host + '/medias/sys_master/images/images/he1/hdc/8845808271390/ktw.jpg'
// ];

final List<String> brandList = [
  'https://ktw.co.th/content/images/thumbs/0354156_3m-3-็ม_300.jpeg',
  'https://ktw.co.th/content/images/thumbs/0470691_abb-ีี_300.jpeg',
  'https://ktw.co.th/content/images/thumbs/0354112_makita-มี้.jpeg',
  'https://ktw.co.th/content/images/thumbs/0354088_force-ฟร์ซ_300.jpeg',
  'https://ktw.co.th/content/images/thumbs/0354113_maktec-แมท_300.jpeg'
];

final List<String> categoryList = [
  'https://ktw.co.th/content/images/thumbs/0444590_%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B9%84%E0%B8%9F%E0%B8%9F%E0%B9%89.jpeg',
  'https://ktw.co.th/content/images/thumbs/0444591_%E0%B8%B8%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B9%81%E0%B8%B0%E0%B8%B1%E0%B8%B5.jpeg',
  'https://ktw.co.th/content/images/thumbs/0444592_%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%B1%E0%B8%B0.jpeg',
  'https://ktw.co.th/content/images/thumbs/0444594_%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%99%E0%B9%89%E0%B8%B3.jpeg',
  'https://ktw.co.th/content/images/thumbs/0444590_%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B9%84%E0%B8%9F%E0%B8%9F%E0%B9%89.jpeg',
  'https://ktw.co.th/content/images/thumbs/0444591_%E0%B8%B8%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B9%81%E0%B8%B0%E0%B8%B1%E0%B8%B5.jpeg',
];
