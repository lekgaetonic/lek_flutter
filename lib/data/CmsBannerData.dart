import 'dart:convert';

class CmsBannerData {
  final String imageUrl;
  final String title;

  CmsBannerData({this.imageUrl, this.title});

  factory CmsBannerData.fromJson(Map<String, dynamic> json) {
    return CmsBannerData(
      imageUrl: json['imageUrl'],
      title: json['title'],
    );
  }
}
