import 'dart:io';

class HomeWidgetModel {
  final String link;
  final String name;
  final String uid;
  final String url;

  HomeWidgetModel({this.link, this.name, this.uid, this.url});
  factory HomeWidgetModel.fromJson(Map<String, dynamic> json) {
    return HomeWidgetModel(
      link: json['link'],
      name: json['name'],
      uid: json['uid'],
      url: json['url'],
    );
  }
}
