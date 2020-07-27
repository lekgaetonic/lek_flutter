class ComponentModel {
  String link;
  String name;
  String uid;
  String url;

  ComponentModel({this.link, this.name, this.uid, this.url});

  ComponentModel.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    name = json['name'];
    uid = json['uid'];
    url = json['url'];
  }
}
