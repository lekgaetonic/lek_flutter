import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_app/models/componentModel.dart';
import 'package:my_flutter_app/services/homeService.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loading_animations/loading_animations.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final String HOST = 'https://ktwdevapi.ktw.co.th';
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  List<ComponentModel> _data = null;
  bool _isLoading = true;
  String _token = "";
  @override
  void initState() {
    super.initState();
    // String _token = "";
    _prefs
        .then((value) => _token = value.getString("token"))
        .then((value) => HomeService().fetchHomeWidget(_token))
        .then((value) => {
              setState(() {
                _data = value.rotates;
                _isLoading = false;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    return _isLoading
        ? Center(
            child:
                LoadingBouncingLine.circle(backgroundColor: Color(0xFFFBD3AF)))
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
                  items: _data.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          //margin: EdgeInsets.all(1.0),
                          //width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                HOST + item.url,
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
                    children: _data.map((url) {
                      int index = _data.indexOf(url);
                      return Container(
                        width: 12.0,
                        height: 10.0,
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
