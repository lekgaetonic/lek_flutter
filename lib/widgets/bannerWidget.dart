import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_app/services/homeService.dart';
import "package:my_flutter_app/models/HomeWidgetModel.dart";
import 'package:shared_preferences/shared_preferences.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  HomeWidgetModel _data = null;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    print('initState');
    // String _token = "";
    // _prefs.then((value) => _token = value.getString("token"));
    HomeService()
        .fetchHomeWidget('80c36b0f-c7d0-4524-8731-c3c1f4894240')
        .then((value) => setState(() {
              _data = value;
              _isLoading = false;
            }));
  }

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    return _isLoading
        ? Container(
            color: Color(0xFF0A111F),
            child: Image.asset(
              'assets/loadings/loading2.gif',
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 100.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                          print(_current);
                        });
                      }),
                  items: imgList.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          //margin: EdgeInsets.all(1.0),
                          //width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                item,
                                fit: BoxFit.fill,
                                //width: 1000,
                              )),
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? const Color(0xFFFF9F1C)
                              : Color.fromRGBO(0, 0, 0, 0.3),
                        ),
                      );
                    }).toList())
              ]);
  }
}

String _host = 'https://ktwdevapi.ktw.co.th';
final List<String> imgList = [
  _host +
      '/medias/sys_master/images/images/h8b/h1b/8845807026206/Happy-May-1900x650.jpg',
  _host +
      '/medias/sys_master/images/images/h32/h4a/8845808205854/TOHO-1900x650s.jpg',
  _host + '/medias/sys_master/images/images/he1/hdc/8845808271390/ktw.jpg'
];
