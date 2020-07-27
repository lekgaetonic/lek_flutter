import 'package:my_flutter_app/models/componentModel.dart';

class HomeWidgetModel {
  String effect;
  bool restricted;
  List<ComponentModel> rotates;

  HomeWidgetModel({this.effect, this.restricted, this.rotates});

  HomeWidgetModel.fromJson(Map<String, dynamic> json) {
    effect = json['effect'];
    restricted = json['restricted'];
    if (json['rotates'] != null) {
      rotates = new List<ComponentModel>();
      json['rotates'].forEach((rotate) {
        rotates.add(new ComponentModel.fromJson(rotate));
      });
    }
  }
}
